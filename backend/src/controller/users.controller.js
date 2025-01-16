import { pool } from "../db.js";

export const getData = async (req, res) => {
  try {
    const { rows } = await pool.query("SELECT * FROM usuarios");
    res.json(rows);
  } catch (error) {
    console.error("Error al obtener los datos:", error);
    res.status(500).json({ error: "Error al obtener los datos" });
  }
};

export const getUser = async (req, res) => {
  const { id } = req.params;
  const { rows } = await pool.query(`SELECT * FROM usuarios WHERE id= ${id}`);
  if (rows.length === 0) {
    return res.status(404).json({
      message: "User not found",
    });
  }
  res.json(rows);
};
