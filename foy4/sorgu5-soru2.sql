CREATE VIEW product_view AS
SELECT 
    product_no AS pro_no,
    "description" AS "desc",
    profit_percent AS profit,
    unit_measure AS Unit_measure,
    qty_on_hand AS qty
FROM product_master;
