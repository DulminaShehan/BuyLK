import express from 'express';
import authController from '../controllers/authController.js';
import { errorHandler } from '../middleware/errorHandler.js';

const router = express.Router();

router.post('/register', authController.register);
router.post('/login', authController.login);
router.use(errorHandler);

export default router;
