--- All properties where the average rating is greater than 4.0 
SELECT * FROM property JOIN (
    SELECT review.property_id, AVG(review.rating) AS avg_rating
    FROM review
    GROUP BY review.property_id
    HAVING avg_rating > 4
    ) AS avg_review 
    ON property.property_id = avg_review .property_id;


--- Correlated subquery to find users who have made more than 3 bookings
SELECT * FROM user WHERE (
    SELECT COUNT(*) FROM booking 
    WHERE user.user_id = booking.user_id
    )  > 3;