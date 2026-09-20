# SQL Practice

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat&logo=postgresql&logoColor=white)
[![LeetCode](https://img.shields.io/badge/LeetCode-venexene-FFA116?style=flat&logo=leetcode&logoColor=white)](https://leetcode.com/venexene)

SQL training - solving LeetCode problems and taking notes.

## Structure

Each problem lives in its own directory with:

- `solution.sql` - the query
- `notes.md` - solution idea, SQL patterns, and mistakes encountered

## Solved

**Solved: 51 problems · 8 topics**

**Difficulty: 33 Easy · 17 Medium · 1 Hard**

| Topic | Solved |
|------|--------|
| Basic Queries | 6 |
| String Functions & Regular Expressions | 3 |
| JOIN & Relations | 8 |
| Aggregation & Grouping | 18 |
| Subqueries | 5 |
| Set Operations | 3 |
| Window Functions | 7 |
| Data Modification | 1 |

## Basic Queries (6)

- [x] [Big Countries](./base/big-coutries/) - WHERE, OR
- [x] [Recyclable and Low Fat Products](./base/recyclable-and-low-fat-products/) - WHERE, AND
- [x] [Find Customer Referee](./base/find-customer-referee/) - WHERE, IS NULL, !=
- [x] [Invalid Tweets](./base/invalid-tweets/) - WHERE, LENGTH
- [x] [Not Boring Movies](./base/not-boring-movies/) - WHERE, modulo, ORDER BY
- [x] [Triangle Judgement](./base/triangle-judgement/) - CASE, triangle inequalities

## String Functions & Regular Expressions (3)

- [x] [Fix Names in a Table](./string-functions/fix-names-in-a-table/) - UPPER, LOWER, LEFT, SUBSTRING, concatenation
- [x] [Patients With a Condition](./string-functions/patients-with-a-condition/) - regular expressions, anchors, alternatives
- [x] [Find Users With Valid E-Mails](./string-functions/find-users-with-valid-e-mails/) - regular expressions, character classes, escaping

## JOIN & Relations (8)

- [x] [Customers Who Never Order](./join/customers-who-never-order/) - LEFT JOIN, IS NULL (anti-join)
- [x] [Rising Temperature](./join/rising-temperature/) - self-join, INTERVAL
- [x] [Replace Employee ID With The Unique Identifier](./join/replace-employee-id-with-the-unique-identifier/) - LEFT JOIN
- [x] [Employee Bonus](./join/employee-bonus/) - LEFT JOIN, IS NULL
- [x] [Students and Examinations](./join/students-and-examinations/) - CROSS JOIN, LEFT JOIN, COUNT
- [x] [Product Sales Analysis I](./join/product-sales-analysis-i/) - JOIN
- [x] [Customer Who Visited but Did Not Make Any Transactions](./join/customer-who-visited-but-did-not-make-any-transactions/) - LEFT JOIN, IS NULL, GROUP BY
- [x] [Average Time of Process per Machine](./join/average-time-of-process-per-machine/) - self-join, aggregation

## Aggregation & Grouping (16)

- [x] [Article Views I](./aggregation/article-views-i/) - WHERE, GROUP BY, ORDER BY
- [x] [Confirmation Rate](./aggregation/confirmation-rate/) - COUNT, FILTER, ROUND
- [x] [Managers with at Least 5 Direct Reports](./aggregation/managers-with-at-least-5-direct-reports/) - self-join, GROUP BY, HAVING
- [x] [Average Selling Price](./aggregation/average-selling-price/) - weighted average, LEFT JOIN, SUM, NULLIF
- [x] [Project Employees I](./aggregation/project-employee-i/) - JOIN, AVG, ROUND
- [x] [Percentage of Users Attended a Contest](./aggregation/percentage-of-users-attended-a-contest/) - COUNT, scalar subquery, ORDER BY
- [x] [Queries Quality and Percentage](./aggregation/queries-quality-and-percentage/) - AVG, FILTER, ROUND
- [x] [Monthly Transactions I](./aggregation/monthly-transactions-i/) - TO_CHAR, GROUP BY, FILTER, COALESCE
- [x] [Number of Unique Subjects Taught by Each Teacher](./aggregation/number-of-unique-subjects-taught-by-each-teacher/) - GROUP BY, COUNT DISTINCT
- [x] [User Activity for the Past 30 Days I](./aggregation/user-activity-for-the-past-30-days-i/) - date range, INTERVAL, COUNT DISTINCT
- [x] [Classes with at Least 5 Students](./aggregation/classes-with-at-least-5-students/) - GROUP BY, COUNT, HAVING
- [x] [Find Followers Count](./aggregation/find-followers-count/) - GROUP BY, COUNT, ORDER BY
- [x] [Biggest Single Number](./aggregation/biggest-single-number/) - GROUP BY, HAVING, subquery, MAX
- [x] [Customers Who Bought All Products](./aggregation/customers-who-bought-all-products/) - COUNT DISTINCT, HAVING, scalar subquery
- [x] [The Number of Employees Which Report to Each Employee](./aggregation/the-number-of-employees-which-report-to-each-employee/) - self-join, COUNT, AVG, ORDER BY
- [x] [Count Salary Categories](./aggregation/count-salary-categories/) - VALUES, CASE, LEFT JOIN, COUNT
- [x] [Group Sold Products By The Date](./aggregation/group-sold-products-by-the-date/) - COUNT DISTINCT, STRING_AGG, GROUP BY, ORDER BY
- [x] [List the Products Ordered in a Period](./aggregation/list-the-products-ordered-in-a-period/) - JOIN, date range, SUM, HAVING

## Subqueries (5)

- [x] [Immediate Food Delivery II](./subqueries/immediate-food-delivery-ii/) - MIN, subquery, JOIN, FILTER
- [x] [Game Play Analysis IV](./subqueries/game-play-analysis-iv/) - MIN, subquery, INTERVAL, COUNT DISTINCT
- [x] [Product Sales Analysis III](./subqueries/product-sales-analysis-iii/) - MIN, subquery, JOIN
- [x] [Product Price at a Given Date](./subqueries/product-price-at-a-given-date/) - MAX, date filter, LEFT JOIN, CASE
- [x] [Employees Whose Manager Left the Company](./subqueries/employees-whose-manager-left-the-company/) - NOT EXISTS, correlated subquery, ORDER BY

## Set Operations (3)

- [x] [Primary Department for Each Employee](./set-operations/primary-department-for-each-employee/) - UNION ALL, GROUP BY, HAVING
- [x] [Movie Rating](./set-operations/movie-rating/) - UNION ALL, COUNT, AVG, ORDER BY, LIMIT
- [x] [Friend Requests II: Who Has the Most Friends](./set-operations/friend-requests-ii-who-has-the-most-friends/) - UNION ALL, GROUP BY, COUNT, LIMIT

## Window Functions (6)

- [x] [Consecutive Numbers](./window-functions/consecutive-numbers/) - LAG, ordered row comparison, DISTINCT
- [x] [Last Person to Fit in the Bus](./window-functions/last-person-to-fit-in-the-bus/) - running SUM, ORDER BY, LIMIT
- [x] [Exchange Seats](./window-functions/exchange-seats/) - LAG, LEAD, CASE, COALESCE
- [x] [Restaurant Growth](./window-functions/restaurant-growth/) - rolling SUM and AVG, ROWS frame, daily aggregation
- [x] [Investments in 2016](./window-functions/investments-in-2016/) - COUNT OVER, PARTITION BY, SUM
- [x] [Department Top Three Salaries](./window-functions/department-top-three-salaries/) - DENSE_RANK, PARTITION BY, JOIN
- [x] [Second Highest Salary](./window-functions/second-highest-salary/) - DENSE_RANK, VALUES, LEFT JOIN, LIMIT

## Data Modification (1)

- [x] [Delete Duplicate Emails](./data-modification/delete-duplicate-emails/) - DELETE, GROUP BY, MIN, NOT IN
