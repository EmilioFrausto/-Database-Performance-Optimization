# Database Performance & Query Optimization

## Project Overview
This project focuses on improving PostgreSQL database performance using indexing and query optimization. We will create a database, add sample data, and compare query performance before and after optimization using `EXPLAIN ANALYZE`.

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
- `sql/` - Database setup, sample data, queries, and indexes
- `tests/` - Performance testing scripts
- `docs/` - Architecture and project results
- `README.md` - Project instructions

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
   `psql -d performance_optimization -f sql/01_database_setup.sql`
3. Import sample data:
   `psql -d performance_optimization -f sql/02_sample_data.sql`

## Execution Instructions
1. Run the original queries:
   `psql -d performance_optimization -f sql/03_baseline_queries.sql`
2. Apply indexes:
   `psql -d performance_optimization -f sql/04_indexes.sql`
3. Run optimized queries:
   `psql -d performance_optimization -f sql/05_optimized_queries.sql`
4. Run performance tests:
   `psql -d performance_optimization -f tests/performance_tests.sql`

## Demonstration Scenarios
1. Show the database structure and sample data.
2. Run queries before optimization.
3. Create indexes and optimize queries.
4. Compare query performance using `EXPLAIN ANALYZE`.
5. Explain the results and improvements.

