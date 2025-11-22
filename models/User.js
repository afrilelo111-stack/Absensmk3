import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";
import Role from "./Role.js";
import Kelas from "./Kelas.js";

const User = sequelize.define("User", {
    username: {
    type: DataTypes.STRING(191),
    allowNull: false,
    unique: true
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false,
    }
});

// Relasi
Role.hasMany(User, { foreignKey: "role_id" });
User.belongsTo(Role, { foreignKey: "role_id" });

Kelas.hasMany(User, { foreignKey: "kelas_id" });
User.belongsTo(Kelas, { foreignKey: "kelas_id" });

export default User;
