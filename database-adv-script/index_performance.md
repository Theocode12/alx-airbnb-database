## Query Performance Analysis Report

This report documents the performance of the query:  
**`SELECT * FROM property WHERE location LIKE 'A%';`**  
across three stages of optimization: **pre-indexing**, **post-analysis**, and **post-indexing**.

---

### 1. **Pre-Indexing Performance**

#### Execution Plan (`EXPLAIN FORMAT=JSON`)
- **Access Type**: `ALL` (Full Table Scan)
- **Rows Examined**: 16,729  
- **Rows Produced**: 1,858  
- **Filtered**: 11.11%  
- **Query Cost**: 1745.15  

#### Actual Execution Metrics (`EXPLAIN ANALYZE`)
- **Execution Time**: `31.5ms` to `175ms` (Total 143.5ms)  
- **Rows Examined**: 16,729  
- **Rows Returned**: 1,681  

#### Observation:
The query performs a **full table scan**, resulting in high costs and relatively long execution time. This behavior is expected for a query without indexing on the `location` column.

---

### 2. **Post-Analysis Performance**

#### Execution Plan (`EXPLAIN FORMAT=JSON`)
- **Access Type**: `ALL` (Full Table Scan remains unchanged)
- **Rows Examined**: 16,729  
- **Rows Produced**: 1,858  
- **Filtered**: 11.11%  
- **Query Cost**: 1745.15  

#### Actual Execution Metrics (`EXPLAIN ANALYZE`)
- **Execution Time**: `0.131ms` to `10.7ms` (Total 10.57ms)  
- **Rows Examined**: 16,729  
- **Rows Returned**: 1,681  

#### Observation:
Although the execution plan remains unchanged (still a full table scan), the actual execution time decreased significantly. The `ANALYZE` statement generated histogram statistics for the `location` column, which likely optimized the filtering step, reducing the time required to evaluate rows.

---

### 3. **Post-Indexing Performance**

#### Execution Plan (`EXPLAIN FORMAT=JSON`)
- **Access Type**: `RANGE` (Index Range Scan on `property_index`)
- **Rows Examined**: 1,681  
- **Rows Produced**: 1,681  
- **Filtered**: 100%  
- **Query Cost**: 756.71  

#### Actual Execution Metrics (`EXPLAIN ANALYZE`)
- **Execution Time**: `0.0757ms` to `5.71ms` (Total 5.63ms)  
- **Rows Examined**: 1,681  
- **Rows Returned**: 1,681  

#### Observation:
The addition of an index (`property_index`) on the `location` column drastically improved performance:
- Access type shifted from `ALL` (full table scan) to `RANGE` (index range scan).  
- The number of rows examined dropped from 16,729 to 1,681.  
- Query cost decreased from 1745.15 to 756.71.  
- Execution time was halved compared to post-analysis.

---

### 4. **Performance Comparison**

| **Stage**            | **Access Type**     | **Rows Examined** | **Query Cost** | **Execution Time** |
|-----------------------|---------------------|--------------------|----------------|--------------------|
| **Pre-Indexing**      | Full Table Scan     | 16,729             | 1745.15        | 143.5ms            |
| **Post-Analysis**     | Full Table Scan     | 16,729             | 1745.15        | 10.57ms            |
| **Post-Indexing**     | Index Range Scan    | 1,681              | 756.71         | 5.63ms             |

---

### 5. **Conclusion**

1. **Impact of `ANALYZE`:**  
   - Running the `ANALYZE` statement reduced execution time significantly, likely due to histogram statistics improving the filtering efficiency during the scan.

2. **Impact of Indexing:**  
   - Indexing the `location` column shifted the query from a full table scan to an efficient index range scan.  
   - This led to dramatic improvements in query cost, rows examined, and execution time.  

3. **Recommendation:**  
   - Always identify high-usage columns in queries and consider indexing them to improve performance.  
   - Use the `ANALYZE` statement regularly to update statistics, ensuring the query planner has accurate data.

--- 
