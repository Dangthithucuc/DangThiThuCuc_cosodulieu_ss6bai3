use ss6;
select 
city,
sum(total_price) as revenue
from
Bookings
where 
status = 'COMPLETED'
group by
city
having
 sum(total_price) > 0;