SELECT Customers.CustomerID, Customers.FullName, Orders.OrderID, Orders.TotalCost, Menu.MenuName, MenuItems.CourseName, MenuItems.StarterName
FROM Customers INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Menu
ON Orders.MenuID = Menu.MenuID
INNER JOIN MenuItems
ON Menu.MenuItemsID = MenuItems.MenuItemsID
WHERE TotalCost > 150
ORDER BY TotalCost ASC;