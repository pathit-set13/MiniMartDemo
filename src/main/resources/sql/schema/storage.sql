CREATE TABLE IF NOT EXISTS storage (
    product_id SERIAL PRIMARY KEY,
    product_barcode VARCHAR(255) UNIQUE NOT NULL,
    product_name VARCHAR(255) UNIQUE NOT NULL,
    quantity INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT
);