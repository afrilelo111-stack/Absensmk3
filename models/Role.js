import { DataTypes } from "sequelize";
import sequelize from "../config/db.js";

const Role = sequelize.define("Role", {
  nama_role: {
    type: DataTypes.STRING(50),
    allowNull: false
  }
});

export default Role;
