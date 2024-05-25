CREATE TABLE IF NOT EXISTS promotion (
    promotion_id SERIAL PRIMARY KEY,
    promoCode VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR NOT NULL,
    description TEXT,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    discount_amount DECIMAL(10,2)
    product_barcode VARCHAR(255) NOT NULL DEFAULT '',
    min_spend DECIMAL(10,2),
    min_quantity INT,
    free_quantity INT
);