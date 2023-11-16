select *
from users;

select firstName, age, weight
from users;

select firstName, lastName, age
from users;

select sum(age)
from users;

select sum(weight)
from users;

select avg(age)
from users;

select avg(weight)
from users;

select *
from users
where gender = 'M';

select *
from users
where gender = 'F';

select firstName, lastName, weight
from users
where gender = 'M';

select firstName, lastName, age, weight
from users
where gender = 'M'
  and weight > 150;
  
select *
from users
order by weight desc;

-- Find the lightest person
select *
from users
order by weight asc
limit 1;

-- Find the heaviest person
select *
from users
order by weight desc
limit 1;

-- Find the lightest male
select *
from users
where gender = 'M'
order by weight asc
limit 1;

-- Find the heaviest male who is younger than 20
select *
from users
where gender = 'M'
	and age < 20
order by weight desc
limit 1;