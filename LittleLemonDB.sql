DELIMITER $$
CREATE PROCEDURE AddBooking(IN booking_id INT, IN customer_id INT, IN booking_date DATE, IN table_number DECIMAL)
BEGIN
    -- Insert a new booking record
    INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNumber)
    VALUES (booking_id, customer_id, booking_date, table_number);
END $$
DELIMITER ;
DELIMITER;

CALL AddBooking(1, 3, '2022-10-15', 3);

Drop Procedure `AddBooking`

DELIMITER $$
CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date DATE)
BEGIN
    -- Update the booking date for the specified booking id
    UPDATE Bookings
    SET BookingDate = booking_date
    WHERE BookingID = booking_id;
END $$
DELIMITER ;
DELIMITER;

CALL UpdateBooking(9, '2022-12-17');


Drop Procedure `UpdateBooking`

DELIMITER $$
CREATE PROCEDURE CancelBooking(IN booking_id INT)
BEGIN
    -- Delete the booking record with the specified booking id
    DELETE FROM Bookings
    WHERE BookingID = booking_id;
    
    -- Output the result
    SELECT CONCAT('Booking with ID ', booking_id, ' has been cancelled.') AS Result;
END $$
DELIMITER ;
DELIMITER;

CALL CancelBooking(9)



