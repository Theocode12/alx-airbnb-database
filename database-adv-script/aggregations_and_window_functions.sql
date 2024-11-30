---  Total number of bookings made by each user
SELECT u.first_name, COUNT(b.booking_id) as no_of_bookings FROM user as u
JOIN booking as b ON u.user_id = b.user_id
GROUP BY u.user_id; 

--- Ranks properties based on the total number of bookings they have received
SELECT p.name, p.description,
RANK() OVER w AS 'rank',
ROW_NUMBER() OVER w  AS'row_no'
FROM property AS p JOIN booking AS b 
ON p.property_id = b.property_id
GROUP BY b.property_id
WINDOW w AS (ORDER BY COUNT(p.property_id) DESC);
