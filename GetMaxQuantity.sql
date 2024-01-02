-- Assuming Orders table has a column named 'quantity' representing ordered quantity

DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    DECLARE maxQuantity INT;

    -- Find the maximum quantity using the MAX function
    SELECT MAX(quantity) INTO maxQuantity FROM Orders;

    -- Display the result
    SELECT CONCAT('The maximum ordered quantity is: ', maxQuantity) AS  "Max Quantity in Order";
END //

DELIMITER ;
