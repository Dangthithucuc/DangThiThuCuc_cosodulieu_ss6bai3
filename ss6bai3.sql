use ss6;
select
user_id,
count(*) as total_bookings,
sum( case when status = 'CANCELLED' then 1 else 0 end) as cancelled_bookings
from
 Bookings
group by
user_id
having
  count(*) >= 10
  and sum(case when status = 'CANCELLED' then 1 else 0 end) > 5;