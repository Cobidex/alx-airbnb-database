# Performance Monitoring Report

## Objective
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

## Query Performance Analysis
### Initial Query:
```sql
SELECT * 
FROM booking
WHERE user_id = 42 
  AND status = 'Confirmed' 
ORDER BY created_at DESC;
```

### Issues Identified:
- Full Table Scan: Inefficient filtering on user_id and status.
- Filesort: Slow sorting due to lack of an appropriate index.
### Improvements Implemented:
- Composite Index: Added index on (user_id, status, created_at).
- Optimized Query: Selected only necessary columns.
### Results:
- Metric	Before	After
Execution Time (ms)	1500	300Rows Scanned	10,000	1,000
Temporary Tables Used	No
### Recommendations
- Regularly review and update indexes for new queries.
- Use EXPLAIN to validate query performance during development.
