# BuyLK REST API Specification

## Authentication
- POST /api/auth/register
- POST /api/auth/login
- POST /api/auth/forgot-password
- POST /api/auth/verify-otp
- POST /api/auth/google-login

## Users
- GET /api/users/me
- PATCH /api/users/me
- GET /api/users/addresses
- POST /api/users/addresses

## Products
- GET /api/products
- GET /api/products/:id
- POST /api/products
- PATCH /api/products/:id
- DELETE /api/products/:id
- POST /api/products/:id/images

## Cart
- GET /api/cart
- POST /api/cart/items
- PATCH /api/cart/items/:id
- DELETE /api/cart/items/:id
- POST /api/cart/coupons/apply

## Orders
- GET /api/orders
- GET /api/orders/:id
- POST /api/orders
- PATCH /api/orders/:id/status
- POST /api/orders/:id/return

## Sellers
- GET /api/sellers/dashboard
- GET /api/sellers/orders
- PATCH /api/sellers/orders/:id/accept
- PATCH /api/sellers/orders/:id/reject

## Riders
- GET /api/riders/dashboard
- GET /api/riders/deliveries
- PATCH /api/riders/deliveries/:id/accept
- PATCH /api/riders/deliveries/:id/complete

## Admin
- GET /api/admin/dashboard
- GET /api/admin/sellers
- PATCH /api/admin/sellers/:id/status
- GET /api/admin/riders
- GET /api/admin/products
- PATCH /api/admin/products/:id/approve

## Notifications
- GET /api/notifications
- POST /api/notifications/send-all
