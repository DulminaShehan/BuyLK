export const errorHandler = (error, _req, res, _next) => {
  const status = error.message.includes('required') || error.message.includes('Invalid') ? 400 : 500;
  res.status(status).json({ message: error.message });
};
