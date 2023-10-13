create schema cars;

--  Read cars data --
SELECT 
    *
FROM
    cars.car_dekho;


-- Total cars: to get the count of total records ---
SELECT 
    COUNT(*)
FROM
    cars.car_dekho;


-- The manager asked the emoployee.How many cars will be availabe in 2023 --
SELECT 
    COUNT(*)
FROM
    cars.car_dekho
WHERE
    year = '2023';


-- The manager asked the employee.How many cars availabe in 2020,2021,2022 --
SELECT 
    year, COUNT(*)
FROM
    cars.car_dekho
WHERE
    year = '2020' OR year = '2021'
        OR year = '2022'
GROUP BY year;


-- Client asked me to print the total of all cars by years.i dont see all the details--
SELECT 
    year, COUNT(*)
FROM
    cars.car_dekho
WHERE
    year = '2020' OR year = '2021'
        OR year = '2022'
GROUP BY year;


-- Clinet asked to cars dealer agent.How many diesel cars will be there in 2020--
SELECT 
    year, fuel, COUNT(*)
FROM
    cars.car_dekho
WHERE
    fuel = 'Diesel' AND year = '2020';


-- Clinet asked to cars dealer agent . how many Petrol cars will be there in 2020--
SELECT 
    year, fuel, COUNT(*)
FROM
    cars.car_dekho
WHERE
    fuel = 'Petrol' AND year = '2020';


-- The manager told to employee to give a print.All the fuel cars (Petrol,Diesel and CNG) come by all years--

SELECT 
    *
FROM
    cars.car_dekho
WHERE
    fuel = 'Diesel';
    
SELECT 
    *
FROM
    cars.car_dekho
WHERE
    fuel = 'Petrol';
    
SELECT 
    *
FROM
    cars.car_dekho
WHERE
    fuel = 'CNG';
    

-- Manager said there were more than 100 cars in the given year, which year had  more than 100 cars--
SELECT 
    year, COUNT(*)
FROM
    cars.car_dekho
GROUP BY year
HAVING COUNT(*) > 100;

SELECT 
    year, COUNT(*)
FROM
    cars.car_dekho
GROUP BY year
HAVING COUNT(*) < 100;


-- The Manager said to the employee. All cars count details between 2015 and 2023.we nedd a complete details--
SELECT 
    COUNT(*)
FROM
    cars.car_dekho
WHERE
    year BETWEEN '2015' AND '2023';
    
SELECT 
    COUNT(*)
FROM
    cars.car_dekho
WHERE
    year >= '2015' AND year <= '2023';
    


-- The manager said to the employee. All cars details between 2025 to 2023 we need list--
SELECT 
    *
FROM
    cars.car_dekho
WHERE
    year >= '2015' AND year <= '2023';





