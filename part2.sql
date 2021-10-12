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
select *
from passengers join airports
on passengers.origin = airports.faa
;
select *
from passengers join airports
on passengers.destination = airports.faa
;
select passengers.name, passengers.origin, 
passengers.destination, passengers.flight_id, flights.id, 
flights.duration
from passengers join flights
on passengers.flight_id = flights.id
;
