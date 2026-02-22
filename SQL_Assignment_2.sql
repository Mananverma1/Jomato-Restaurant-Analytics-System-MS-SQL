create database jomato;

use jomato;

CREATE TABLE Orders1 (
    OrderId INT PRIMARY KEY,
    RestaurantName NVARCHAR(255),
    RestaurantType NVARCHAR(100),
    Rating DECIMAL(3,2),
    No_of_Rating INT,
    AverageCost INT,
    OnlineOrder NVARCHAR(3),       
    TableBooking NVARCHAR(3),      
    CuisinesType NVARCHAR(255),
    Area NVARCHAR(255),
    LocalAddress NVARCHAR(255),
    DeliveryTime INT
);


select * from Orders1

bulk insert dbo.Orders1
from "C:\Jomato.csv"
with
(format = 'CSV', firstrow = 2)

SELECT * FROM ORDERS1

-- (1) create a user defined functions to stuff the chicken into 'quick bites'. eg. 'quick chicken bites'

-- Function to replace 'Quick Bites' with 'Quick Chicken Bites'
CREATE FUNCTION 
stuffchicken (@RestaurantType NVARCHAR(100))
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @Result NVARCHAR(100);

    SET @Result = REPLACE(@RestaurantType, 'Quick Bites', 'Quick Chicken Bites');

    RETURN @Result;
END;

-- (2)

SELECT TOP 1 
    RestaurantName,
    dbo.stuffchicken(RestaurantType) AS UpdatedRestaurantType,
    No_of_Rating
FROM Orders1
ORDER BY No_of_Rating DESC;

-- (3)

SELECT 
    RestaurantName,
    Rating,
    CASE 
        WHEN Rating > 4 THEN 'Excellent'
        WHEN Rating > 3.5 AND Rating <= 4 THEN 'Good'
        WHEN Rating > 3 AND Rating <= 3.5 THEN 'Average'
        ELSE 'Bad'
    END AS RatingStatus
FROM Orders1;

-- (4)

SELECT 
    RestaurantName,
    Rating,
    CEILING(Rating) AS Ceil_Rating,
    FLOOR(Rating) AS Floor_Rating,
    ABS(Rating) AS Absolute_Rating,
    GETDATE() AS CurrentDate,
    YEAR(GETDATE()) AS Current_Year,
    DATENAME(MONTH, GETDATE()) AS Current_Month,
    DAY(GETDATE()) AS Current_Day
FROM Orders1;

-- (5)

SELECT 
    RestaurantType,
    SUM(AverageCost) AS TotalAverageCost
FROM Orders1
GROUP BY ROLLUP(RestaurantType);



