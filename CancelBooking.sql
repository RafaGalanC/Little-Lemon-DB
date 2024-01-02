CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(IN Booking_id INT)
BEGIN
    DELETE FROM Booking WHERE BookingID = Booking_id;
    SELECT CONCAT("Booking ", Booking_id, " cancelled") AS "Confirmation";
END