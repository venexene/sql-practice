# Replace Employee ID With The Unique Identifier

## Инсайт

Нужно показать всех сотрудников и их unique_id, а если unique_id нет — вывести `NULL`. Это `LEFT JOIN` для **дополнения данных**: главная таблица `Employees` слева, справа присоединяем `EmployeeUNI`. Сотрудники без записи справа не теряются, для них `unique_id = NULL`.

## Решение

### LEFT JOIN — O(n + m), O(1)

```sql
SELECT euni.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI euni ON e.id = euni.id;
```

Все сотрудники сохраняются, unique_id подтягивается там, где есть.

## Что важно запомнить

- **LEFT JOIN = «сохранить всё из левой таблицы».** Если сотрудник есть в `Employees`, но его нет в `EmployeeUNI` — он всё равно попадёт в результат с `NULL`
- **Порядок таблиц важен.** Если написать `FROM EmployeeUNI LEFT JOIN Employees` — сотрудники без unique_id потеряются. Левая таблица = та, чьи записи мы гарантированно хотим видеть все
- **Два применения LEFT JOIN:** 1) *дополнить данные* (как здесь — `SELECT euni.unique_id`), 2) *анти-джойн* — найти отсутствующие записи через `WHERE ... IS NULL` (как в Customers Who Never Order)
- **INNER JOIN дал бы другой результат:** только сотрудники, у которых unique_id есть. На LeetCode это частая ошибка — подмена LEFT на INNER
