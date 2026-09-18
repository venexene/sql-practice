# SQL Practice

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat&logo=postgresql&logoColor=white)
[![LeetCode](https://img.shields.io/badge/LeetCode-venexene-FFA116?style=flat&logo=leetcode&logoColor=white)](https://leetcode.com/venexene)

SQL training - solving LeetCode problems and taking notes.

## Structure

Each problem lives in its own directory with:

- `solution.sql` - the query
- `notes.md` - solution idea, SQL patterns, and mistakes encountered

## Solved

**Solved: 30 problems · 4 topics**

**Difficulty: 23 Easy · 7 Medium · 0 Hard**

| Topic | Solved |
|------|--------|
| Basic Queries | 5 |
| JOIN & Relations | 8 |
| Aggregation & Grouping | 14 |
| Subqueries & First-Event Selection | 3 |

## Basic Queries (5)

- [x] [Big Countries](./base/big-coutries/) - WHERE, OR
- [x] [Recyclable and Low Fat Products](./base/recyclable-and-low-fat-products/) - WHERE, AND
- [x] [Find Customer Referee](./base/find-customer-referee/) - WHERE, IS NULL, !=
- [x] [Invalid Tweets](./base/invalid-tweets/) - WHERE, LENGTH
- [x] [Not Boring Movies](./base/not-boring-movies/) - WHERE, modulo, ORDER BY

## JOIN & Relations (8)

- [x] [Customers Who Never Order](./join/customers-who-never-order/) - LEFT JOIN, IS NULL (anti-join)
- [x] [Rising Temperature](./join/rising-temperature/) - self-join, INTERVAL
- [x] [Replace Employee ID With The Unique Identifier](./join/replace-employee-id-with-the-unique-identifier/) - LEFT JOIN
- [x] [Employee Bonus](./join/employee-bonus/) - LEFT JOIN, IS NULL
- [x] [Students and Examinations](./join/students-and-examinations/) - CROSS JOIN, LEFT JOIN, COUNT
- [x] [Product Sales Analysis I](./join/product-sales-analysis-i/) - JOIN
- [x] [Customer Who Visited but Did Not Make Any Transactions](./join/customer-who-visited-but-did-not-make-any-transactions/) - LEFT JOIN, IS NULL, GROUP BY
- [x] [Average Time of Process per Machine](./join/average-time-of-process-per-machine/) - self-join, aggregation

## Aggregation & Grouping (14)

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

## Subqueries & First-Event Selection (3)

- [x] [Immediate Food Delivery II](./subqueries/immediate-food-delivery-ii/) - MIN, subquery, JOIN, FILTER
- [x] [Game Play Analysis IV](./subqueries/game-play-analysis-iv/) - MIN, subquery, INTERVAL, COUNT DISTINCT
- [x] [Product Sales Analysis III](./subqueries/product-sales-analysis-iii/) - MIN, subquery, JOIN
