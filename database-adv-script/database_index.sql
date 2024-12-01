CREATE INDEX property_index ON property location;

EXPLAIN ANALYZE SELECT * FROM property WHERE location LIKE 'A%';

EXPLAIN FORMAT=JSON SELECT * FROM property WHERE location LIKE 'A%';
