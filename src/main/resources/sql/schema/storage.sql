CREATE TABLE storage (
    itemId SERIAL PRIMARY KEY,
    barcode VARCHAR(255) UNIQUE NOT NULL,
    product_name VARCHAR(255) UNIQUE NOT NULL,
    quantity INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT
);