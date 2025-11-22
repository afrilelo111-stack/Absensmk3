import express from "express";
import argon2 from "argon2";
import jwt from "jsonwebtoken";
import User from "../models/User.js";
import Role from "../models/Role.js";
import Kelas from "../models/Kelas.js";
import dotenv from "dotenv";

dotenv.config();
const router = express.Router();

/* ======================
        REGISTER
====================== */
router.post("/register", async (req, res) => {
    const { username, password, role_id, kelas_id } = req.body;

    try {
        const hash = await argon2.hash(password);

        await User.create({
            username,
            password: hash,
            role_id,
            kelas_id,
        });

        if (role_id === 3 && !kelas_id) {
        return res.status(400).json({
            success: false,
            msg: "Siswa wajib memilih kelas"
        });
        }

        res.json({ success: true, msg: "Register berhasil" });
    } catch (err) {
        res.json({ success: false, msg: "Gagal register" });
    }
});

/* ======================
        LOGIN
====================== */
router.post("/login", async (req, res) => {
    const { username, password } = req.body;

    const user = await User.findOne({
        where: { username },
        include: [Role, Kelas],
    });

    if (!user) {
        return res.json({ success: false, msg: "User tidak ditemukan" });
    }

    if (!user.Role) {
  return res.status(400).json({
    success: false,
    msg: "Role tidak ditemukan untuk user ini"
  });
}


    const match = await argon2.verify(user.password, password);
    if (!match) {
        return res.json({ success: false, msg: "Password salah" });
    }

    const token = jwt.sign(
        {
            id: user.id,
            role: user.Role.nama_role,
            kelas: user.Kelas.nama_kelas,
        },
        process.env.JWT_SECRET,
        { expiresIn: "1d" }
    );

    res.json({
        success: true,
        msg: "Login berhasil",
        token,
        user: {
            username: user.username,
            role: user.Role.nama_role,
            kelas: user.Kelas.nama_kelas,
        }
    });
});

export default router;
