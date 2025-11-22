import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import authRoutes from "./routes/auth.js";
import sequelize from "./config/db.js";
import "./models/User.js";
import "./models/Role.js";
import "./models/Kelas.js";

sequelize.sync({ alter: true }).then(() => {
    console.log("Database synced!");
});


dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());

app.use("/auth", authRoutes);

// Sync database
sequelize.sync().then(() => {
    console.log("Database Connected");
});

app.listen(process.env.PORT, () => {
    console.log(`Server running on port ${process.env.PORT}`);
});
