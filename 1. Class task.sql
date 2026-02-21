
  -----1. Display all properties in the database.
  select *
  from [property_details]

  ----2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.

  select city, province, property_price
  from [property_details]

  ----3. List all distinct provinces in the table.
  
  select distinct province
  from [property_details]

  -----4. Find all properties located in Gauteng.

  select *
  from  [property_details]
  where province = 'gauteng'


  -----5. Show properties priced under R1,500,000.

  select *
  from [property_details]
  where Property_price < 1500000

  ----6. List properties with more than 3 bedrooms.

  select *
  from [property_details]
  where Bedrooms > 3

  ----7. Find properties with parking for at least 2 cars.

  select *
  from [property_details]
  where parking >=2

  -----8. Show properties where the monthly repayment is greater than R25,000.

select * 
from [property_details]
where Monthly_repayment > 25000

----9. Show all properties ordered by property price from highest to lowest.

select * 
from [property_details]
order by Property_price desc

----10. List properties ordered by floor size from smallest to largest.

select *
from [property_details]
order by floor_size asc

----11. Show Gauteng properties ordered by monthly repayment.

select *
from [property_details]
where Province = 'Gauteng'
order by Monthly_repayment

-----12. Find Western Cape properties priced below R3,000,000.

select *
from [property_details]
where Province ='Western Cape' and Property_price < 3000000


----13. Show KwaZulu-Natal properties with 3 or more bedrooms.

select * 
from [property_details]
where Province = 'KwaZulu-Natal' and Bedrooms >=3

------14. Find properties in Limpopo or Free State ordered by property price.

select * 
from [property_details]
where Province in ('Limpopo','Free State') 
order by Property_price


------15. Show the 10 most expensive properties.
select top 10 *
from [property_details]
order by Property_price desc


------16. Show the 5 cheapest properties.
select top 5 *
from [property_details]
order by Property_price asc


------17. Show the top 10 properties with the largest floor size.
select top 10 *
from [property_details]
order by FLOOR_SIZE desc



------18. Which province appears to have the highest priced properties?
       SELECT TOP 1 Province,
        MAX(PROPERTY_PRICE) AS HighestPrice
        FROM Property_details
        GROUP BY Province
        ORDER BY HighestPrice DESC


------19. Which cities appear to have the most affordable housing?

       SELECT CITY,AVG(property_price) AS AvgPrice
       FROM property_details
       GROUP BY City
       ORDER BY AvgPrice ASC


------20. What minimum income is typically required for properties priced above R4,000,000?  
     SELECT MIN(Min_Gross_Monthly_Income) AS MinimumRequiredIncome
     FROM property_details
     WHERE PROPERTY_PRICE > 4000000


     
