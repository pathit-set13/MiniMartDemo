INSERT INTO promotion (promoCode, name, description, start_date, end_date, product_barcode, discount_amount, min_spend, min_quantity, free_quantity)
VALUES ('HOTSUMMER20', 'Discount 20 THB. for Beverages', 'Discount 20 THB. for Beverage total price.', '2024-04-01', '2024-06-30', '999745612385,999745612479,894156110548,894156114458,004849654670', 20.00, 0.00, 1, 0)ON CONFLICT (promoCode) DO NOTHING;
INSERT INTO promotion (promoCode, name, description, start_date, end_date, product_barcode, discount_amount, min_spend, min_quantity, free_quantity)
VALUES ('HOTSUMMER50', 'Discount 50 THB. for Beverages', 'Discount 50 THB. for Beverage total price at min spend 150 THB.', '2024-04-01', '2024-06-30', '999745612385,999745612479,894156110548,894156114458,004849654670', 50.00, 150.00, 1, 0)ON CONFLICT (promoCode) DO NOTHING;
INSERT INTO promotion (promoCode, name, description, start_date, end_date, product_barcode, discount_amount, min_spend, min_quantity, free_quantity)
VALUES ('MILK10', 'Discount 10 THB. for all Milk in pack', 'Discount 10 THB. for all Milk in pack', '2024-04-01', '2024-06-30', '999745612385,999745612479,894156110548,894156114458,004849654670', 50.00, 150.00, 1, 0)ON CONFLICT (promoCode) DO NOTHING;
