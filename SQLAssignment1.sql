-- SQL Winter Bridge Assignment 1

-- 1. HNL is the destination furthest away.
-- Query:  SELECT *, CAST(distance AS UNSIGNED) as d FROM flights
--         order by d desc

-- 2. Planes can have 1,2,3 or 4 engines. For 1 seat planes the Otter DHC-3 as the most seats (16)
-- for 2 engine planes the 777-222 has 400 seats, for three engine planes the A330-223 has 379
-- seats and for 4 engine plance the 747-451 has 450 seats.
-- 
-- Query:  
--         Select * from
--         (SELECT engines, seats, model
--         from planes
--         order by engines asc, seats desc) as t
--         group by engines
 

-- 3. There are 336,776 total flights and 3,844 unique flight numbers.
-- Query: 
--       Select count(flight) as total, count(distinct flight) as numbers 
--       from flights

-- 4.Please see result set below:

--carrier	total	numbers
--UA	58665	1285
--B6	54635	394
--EV	54173	1098
--DL	48110	600
--AA	32729	220
--MQ	26397	194
--US	20536	436
--9E	18460	512
--WN	12275	863
--VX	5162	20
--FL	3260	51
--AS	714	6
--F9	685	12
--YV	601	27
--HA	342	1
--OO	32	6

-- Query:  
--         Select carrier, count(flight) as total, count(distinct flight) as numbers
--         from flights
--         group by carrier
--         order by total desc

-- 5. see 4 above

-- 6. See results below:

--carrier	total	numbers
--UA	58665	1285
--B6	54635	394
--EV	54173	1098
--DL	48110	600
--AA	32729	220
 
-- Query: 
--        Select carrier, count(flight) as total, count(distinct flight) as numbers
--        from flights
--        group by carrier
--        order by total desc
--        Limit 5

-- 7. See result below:

--carrier	total	numbers
--UA	41135	1215
--B6	30022	223
--DL	28096	396
--AA	23583	168
--EV	6248	213

--  Query: 
--         Select carrier, count(flight) as total, count(distinct flight) as numbers
--         from flights
--         where distance >= 1000
--         group by carrier
--         order by total desc
--         Limit 5

-- 8. What carrier had the most early arrivals? Answer = UA

-- Query: 
--        Select carrier, count(arr_delay) as early from flights
--        where arr_delay < 0
--        group by carrier
--        order by early desc
