# Lab 2.07 My SQL Quieries 7


#1.


use
	sakila;

select
	*
from
	sakila.actor;
    
    
select 
	last_name
from
	sakila.actor;
    
select
	count(last_name)
from
	sakila.actor;
    
    
    select
	last_name as 'Last Name', count(last_name) as 'Last Name Count'
from 
	sakila.actor
group by
	last_name
having 
	count(last_name) > 1
order by
	count(last_name) desc;
    
    
#2.

    
select
	last_name as 'Last Name', count(last_name) as 'Last Name Count'
from 
	sakila.actor
group by
	last_name
having 
	count(last_name) > 1
order by
	count(last_name) desc;
    

#3.


select
	*
from
	sakila.rental;

select 
	rental_id, staff_id
from
	sakila.rental;

select
	count(distinct staff_id)
from
	sakila.rental;

select
	count(distinct rental_id)
from
	sakila.rental;

select
	staff_id as 'Staff ID', count(rental_id) as 'Total Rentals'
from 
	sakila.rental
group by
	staff_id
order by 
	staff_id asc;

    
#4.


select
	*
from
	sakila.film;
    
select
	count(distinct film_id)
from 
	sakila.film;
    
select
	count(distinct release_year)
from 
	sakila.film; 
    
select
	count(distinct film_id) as '# of Different Films', release_year as 'Release Year'
from 
	sakila.film
group by
	release_year
order by
	release_year;
    
#5.


select
	distinct rating
from 
	sakila.film;
    
select 
	count(distinct film_id) as '# Number of Films', rating
from
	sakila.film
group by
	rating
order by
	count(distinct film_id) desc;
    
#6.
	
select 
	rating, avg(length)
from
	sakila.film
group by
	rating
order by
	avg(length) desc, rating;
    

#7.

    
