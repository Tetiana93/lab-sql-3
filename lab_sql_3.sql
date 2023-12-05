select count(distinct(last_name)) from actor;
select count(distinct(language_id)) from film;
select count(distinct(film_id)) from film
where rating ='PG-13';
select * from film
where release_year = '2006'
and length in (select max(length) from film);
SELECT DATEDIFF(current_date(), convert(min(rental_date), date)) AS TotalDaysOperating
FROM rental;
SELECT DATEDIFF(convert(max(rental_date), date), convert(min(rental_date), date)) AS TotalDaysOperating
FROM rental;
select extract(month from rental_date) as month, WEEKDAY(rental_date) AS weekday_index
from rental
limit 20;
select rental_date, WEEKDAY(rental_date),
case
when WEEKDAY(rental_date) in (5, 6) then 'weekend'
else 'workday'
end as 'day_type'
from rental;
select count(rental_id) from rental
where rental_date in (select max(rental_date) from rental);





