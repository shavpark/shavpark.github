select origin, destination, pass_count
from flights
;
select flight_count, name
from airlines
;
select name, flight_count
from airlines
order by flight_count desc
;
select name, flight_count
from airports
;
select *
from passengers join flights
on passengers.flight_id = flights.flight_id
;
select p.name, p.origin, a.name, p.destination, a1.name, p.flight_id
from passengers p 
join airports a on a.faa = p.origin
join airports a1 on a1.faa = p.destination
;
select passengers.name, passengers.origin, 
passengers.destination, passengers.flight_id, flights.id, 
flights.duration
from passengers join flights
on passengers.flight_id = flights.id
;
