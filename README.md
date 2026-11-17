# Database Performance & Query Optimization

## Project Overview

This project focuses on improving PostgreSQL database performance using indexing and query optimization. We created a database, added sample data, and compared query performance before and after optimization using `EXPLAIN ANALYZE`.

## Team Members

- Adam Jabbar
- Emilio Frausto
- Omar Hamza

## Prerequisites

- PostgreSQL 15
- psql
- Git
- Visual Studio Code

## Repository Structure

- `database_setup.sql` - Database table creation
- `sample_data.sql` - Sample data generation
- `baseline_queries.sql` - Queries before optimization
- `indexes.sql` - Index creation and optimization
- `optimized_queries.sql` - Queries after optimization
- `README.md` - Project instructions and performance results

## Setup Instructions

1. Clone the repository:

   `git clone https://github.com/EmilioFrausto/-Database-Performance-Optimization.git`

2. Open the project folder:

   `cd -- -Database-Performance-Optimization`

3. Make sure PostgreSQL is installed and running.

## Database Creation and Import

Run these commands in Terminal:

1. Create the database:

   `createdb performance_optimization`

2. Create the tables:

   `psql -d performance_optimization -f database_setup.sql`

3. Import sample data:

   `psql -d performance_optimization -f sample_data.sql`

## Execution Instructions

Run these commands in order on a newly created project database:

1. Run the original queries:

   `psql -d performance_optimization -f baseline_queries.sql`

2. Apply indexes:

   `psql -d performance_optimization -f indexes.sql`

3. Run optimized queries:

   `psql -d performance_optimization -f optimized_queries.sql`

4. Compare the execution times before and after optimization.

## Performance Results

We used `EXPLAIN (ANALYZE, BUFFERS)` to compare three SQL queries.

| Query | Before | After | Improvement |
|---|---:|---:|---:|
| Students by enrollment date | 14.947 ms | 1.508 ms | 89.91% |
| Enrollments by course | 60.942 ms | 17.822 ms | 70.76% |
| Students by department | 12.476 ms | 10.753 ms | 13.81% |

All three queries showed improved execution times after indexing in our initial tests. Results may vary depending on system performance and database conditions.

## Demonstration Scenarios

1. Show the database structure and sample data.
2. Run queries before optimization.
3. Create indexes and optimize queries.
4. Compare query performance using `EXPLAIN ANALYZE`.
5. Explain the results and improvements.
