SELECT 
u.email,
u.first_name,
b.start_date,
b.status,
p.name,
p.location,
p.pricepernight,
pay.amount,
pay.payment_method
FROM booking AS b
JOIN user AS u 
ON b.user_id = u.user_id
JOIN property AS p
;

SELECT 
    b.booking_id,
    b.user_id,
    b.property_id,
    b.booking_date,
    b.status AS booking_status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    p.price_per_night,
    pay.payment_id,
    pay.payment_amount,
    pay.payment_date
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id;
```

### Step 2: Analyze the Query’s Performance Using `EXPLAIN`
Now, we need to analyze the performance of this query by using `EXPLAIN` in MySQL. This will give us insight into how MySQL plans to execute the query, including which indexes it uses, whether it's doing full table scans, and how many rows it expects to examine.

```sql
EXPLAIN SELECT 
    b.booking_id,
    b.user_id,
    b.property_id,
    b.booking_date,
    b.status AS booking_status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    p.price_per_night,
    pay.payment_id,
    pay.payment_amount,
    pay.payment_date
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id;
