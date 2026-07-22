# BuyLK PostgreSQL Schema

## Core Entities

### users
- id UUID PK
- email VARCHAR UNIQUE
- phone VARCHAR UNIQUE
- password_hash VARCHAR
- full_name VARCHAR
- role VARCHAR (buyer, seller, rider, admin)
- avatar_url VARCHAR
- is_active BOOLEAN
- is_verified BOOLEAN
- created_at TIMESTAMP
- updated_at TIMESTAMP

### sellers
- id UUID PK
- user_id UUID FK -> users.id
- shop_name VARCHAR
- shop_slug VARCHAR UNIQUE
- description TEXT
- logo_url VARCHAR
- business_address TEXT
- contact_phone VARCHAR
- status VARCHAR (pending, approved, suspended)
- created_at TIMESTAMP

### riders
- id UUID PK
- user_id UUID FK -> users.id
- vehicle_type VARCHAR
- vehicle_number VARCHAR
- is_active BOOLEAN
- earnings DECIMAL(10,2)
- created_at TIMESTAMP

### categories
- id UUID PK
- name VARCHAR
- slug VARCHAR UNIQUE
- parent_id UUID FK -> categories.id
- image_url VARCHAR
- is_active BOOLEAN

### products
- id UUID PK
- seller_id UUID FK -> sellers.id
- category_id UUID FK -> categories.id
- title VARCHAR
- slug VARCHAR UNIQUE
- description TEXT
- base_price DECIMAL(10,2)
- discount_price DECIMAL(10,2)
- currency VARCHAR
- stock_quantity INT
- status VARCHAR (draft, published, approved, rejected)
- is_featured BOOLEAN
- created_at TIMESTAMP

### product_variants
- id UUID PK
- product_id UUID FK -> products.id
- name VARCHAR
- sku VARCHAR UNIQUE
- price DECIMAL(10,2)
- stock_quantity INT

### product_images
- id UUID PK
- product_id UUID FK -> products.id
- image_url VARCHAR
- is_primary BOOLEAN

### addresses
- id UUID PK
- user_id UUID FK -> users.id
- label VARCHAR
- full_name VARCHAR
- phone VARCHAR
- address_line_1 VARCHAR
- address_line_2 VARCHAR
- city VARCHAR
- state VARCHAR
- postal_code VARCHAR
- country VARCHAR
- is_default BOOLEAN

### orders
- id UUID PK
- buyer_id UUID FK -> users.id
- seller_id UUID FK -> sellers.id
- rider_id UUID FK -> riders.id
- status VARCHAR (pending, accepted, preparing, ready, shipped, delivered, cancelled, returned)
- payment_method VARCHAR
- payment_status VARCHAR
- shipping_address_id UUID FK -> addresses.id
- subtotal DECIMAL(10,2)
- discount DECIMAL(10,2)
- shipping_fee DECIMAL(10,2)
- total DECIMAL(10,2)
- created_at TIMESTAMP

### order_items
- id UUID PK
- order_id UUID FK -> orders.id
- product_id UUID FK -> products.id
- quantity INT
- unit_price DECIMAL(10,2)
- total_price DECIMAL(10,2)

### coupons
- id UUID PK
- code VARCHAR UNIQUE
- discount_type VARCHAR
- discount_value DECIMAL(10,2)
- expires_at TIMESTAMP
- is_active BOOLEAN

### reviews
- id UUID PK
- product_id UUID FK -> products.id
- user_id UUID FK -> users.id
- rating INT
- comment TEXT
- created_at TIMESTAMP

### notifications
- id UUID PK
- user_id UUID FK -> users.id
- title VARCHAR
- body TEXT
- is_read BOOLEAN
- created_at TIMESTAMP
