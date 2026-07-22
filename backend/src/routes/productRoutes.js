import express from 'express';

const router = express.Router();

router.get('/', (_req, res) => {
  res.json({
    products: [
      { id: '1', title: 'Noise Headphones', price: 8500 },
      { id: '2', title: 'Leather Wallet', price: 3200 },
    ],
  });
});

export default router;
