-- В рамках БД "онлайн-магазин" напишите след/запросы:

-- Найти мин/стоимость товаров для каждой категории

    SELECT 
        Categories.CategoryName,
        MIN(Products.Price) AS min_price
            
    FROM [Products]
    JOIN Categories ON Categories.CategoryID = Products.CategoryID
    GROUP BY Categories.CategoryName

-- Вывести названия категорий, в которых более 10 товаров

    SELECT 
        Categories.CategoryName,
        COUNT(*) AS count_products
    FROM Products
    JOIN Categories ON Categories.CategoryID = Products.CategoryID

    GROUP BY Categories.CategoryID
    HAVING count_products >= 10
	
-- Очистить тел/номер поставщикам из USA

    UPDATE Suppliers
    SET
        Phone = NULL
    WHERE Country = 'USA'

-- Вывести имена и фамилии (и ко-во заказов) менеджеров, у которых ко-во заказов менее 15

    SELECT 
        LastName,
        FirstNAme,
        COUNT(*) AS count_Orders
    FROM [Employees]
    JOIN Orders ON Orders.EmployeeID = Employees.EmployeeID
    GROUP BY Orders.EmployeeID
    HAVING count_Orders <= 15

-- С помощью инструмента онлайн-проектирования описать схему БД "онлайн-шахматы"

    https://dbdiagram.io/d/652eec1dffbf5169f0e3faf1