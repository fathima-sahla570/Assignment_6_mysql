Working with SQL Joins and Queries
In database management, tables often need to be combined or queried in various ways to extract meaningful information. The Country and Persons tables provide a dataset that can be used to explore these operations. Below are some common SQL operations, including joins and data transformations, that highlight the utility of relational databases.

SQL Tasks
1. Perform Inner Join, Left Join, and Right Join on the Tables
Inner Join: Combines rows from both tables where there is a match in the specified column(s). Non-matching rows are excluded.
Left Join: Combines rows from both tables but retains all rows from the left table, filling unmatched rows with NULL.
Right Join: Similar to a Left Join but retains all rows from the right table.
2. List All Distinct Country Names
This query retrieves a unique list of country names by combining both the Country and Persons tables. The UNION operator ensures duplicates are removed.

3. List All Country Names (Including Duplicates)
The UNION ALL operator is used to combine country names from both tables, retaining duplicates to show the full dataset.

4. Round the Ratings to the Nearest Integer
In the Persons table, ratings might have decimal values. The ROUND function is applied to transform them into integers, simplifying analysis or presentation.

These SQL queries are fundamental for anyone working with relational databases, as they demonstrate the ability to manipulate and analyze data effectively.















