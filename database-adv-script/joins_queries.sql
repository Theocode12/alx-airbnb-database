SELECT * FROM user INNER JOIN booking ON user.user_id = booking.user_id;

SELECT * FROM property 
LEFT JOIN review 
ON property.property_id = review.property_id
ORDER BY review.rating DESC;

SELECT * FROM user LEFT JOIN booking ON user.user_id = booking.user_id
UNION
SELECT * FROM user RIGHT JOIN booking ON user.user_id = booking.user_id;

SELECT * FROM property 
FULL OUTER JOIN review 
ON property.property_id = review.property_id
ORDER BY review.rating DESC;