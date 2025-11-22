import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Kelas = sequelize.define("Kelas", {
    nama_kelas: {
        type: DataTypes.STRING,
        allowNull: false
    }
});

export default Kelas;
