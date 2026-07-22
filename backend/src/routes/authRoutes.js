import express from 'express';
import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';

dotenv.config();

const router = express.Router();

router.post('/register', async (req, res) => {
  try {
    const { fullName, email, phone, password, role = 'buyer' } = req.body;

    if (!fullName || !password) {
      return res.status(400).json({ message: 'Missing required fields' });
    }

    const passwordHash = await bcrypt.hash(password, 10);
    const token = jwt.sign({ fullName, role, email: email || null, phone: phone || null }, process.env.JWT_SECRET || 'dev-secret', {
      expiresIn: '7d',
    });

    return res.status(201).json({
      message: 'User registered successfully',
      token,
      user: {
        fullName,
        role,
        email: email || null,
        phone: phone || null,
      },
      passwordHash,
    });
  } catch (error) {
    return res.status(500).json({ message: 'Registration failed', error: error.message });
  }
});

router.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;

    if (!email || !password) {
      return res.status(400).json({ message: 'Email and password are required' });
    }

    const token = jwt.sign({ email }, process.env.JWT_SECRET || 'dev-secret', { expiresIn: '7d' });

    return res.json({ message: 'Login successful', token, user: { email, role: 'buyer' } });
  } catch (error) {
    return res.status(500).json({ message: 'Login failed', error: error.message });
  }
});

export default router;
