CREATE TABLE IF NOT EXISTS storage (
    product_id SERIAL PRIMARY KEY,
    barcode VARCHAR(255) NOT NULL,
    product_name VARCHAR(255) UNIQUE NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INTEGER NOT NULL,
    unit VARCHAR(255) NOT NULL DEFAULT 'unit',
    description TEXT
);