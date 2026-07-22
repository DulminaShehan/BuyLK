import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import userRepository from '../repositories/userRepository.js';

class AuthService {
  async register(payload) {
    const { fullName, email, phone, password, role = 'buyer' } = payload;

    if (!fullName || !password) {
      throw new Error('Missing required fields');
    }

    const passwordHash = await bcrypt.hash(password, 10);
    const user = await userRepository.create({
      fullName,
      email,
      phone,
      passwordHash,
      role,
    });

    const token = jwt.sign({ sub: user.id, role: user.role }, process.env.JWT_SECRET || 'dev-secret', { expiresIn: '7d' });

    return { message: 'User registered successfully', token, user: { id: user.id, fullName, email, phone, role } };
  }

  async login(payload) {
    const { email, password } = payload;

    if (!email || !password) {
      throw new Error('Email and password are required');
    }

    const user = await userRepository.findByEmail(email);
    if (!user) {
      throw new Error('Invalid credentials');
    }

    const isValidPassword = await bcrypt.compare(password, user.passwordHash);
    if (!isValidPassword) {
      throw new Error('Invalid credentials');
    }

    const token = jwt.sign({ sub: user.id, role: user.role }, process.env.JWT_SECRET || 'dev-secret', { expiresIn: '7d' });

    return { message: 'Login successful', token, user: { id: user.id, email: user.email, role: user.role } };
  }
}

export default new AuthService();
