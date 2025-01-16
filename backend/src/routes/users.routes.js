import { Router } from "express";
import { pool } from "../db.js";
import { getData, getUser } from "../controller/users.controller.js";

const router = Router()

router.get('/data',getData);
router.get('/data/:id',getUser)



export default router;