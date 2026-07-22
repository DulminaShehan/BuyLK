import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import authRoutes from './routes/authRoutes.js';

dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

app.get('/health', (_req, res) => {
  res.json({ status: 'ok', service: 'buylk-api' });
});

app.use('/api/auth', authRoutes);

app.listen(port, () => {
  console.log(`BuyLK API listening on port ${port}`);
});
