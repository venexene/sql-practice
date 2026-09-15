# Customers Who Never Order

## Инсайт

Нужно найти записи в таблице `Customers`, которых нет в `Orders`. Это задача на **анти-джойн** — классический `LEFT JOIN + IS NULL`.

## Решение

### LEFT JOIN + IS NULL

```sql
SELECT c.name AS Customers
FROM Customers AS c
LEFT JOIN Orders AS o ON c.id = o.customerId
WHERE o.customerId IS NULL;
```

LEFT JOIN присоединяет заказы, а `WHERE ... IS NULL` оставляет только строки, для которых заказ не нашёлся.

## Альтернативы

| Подход | Пример | Нюанс |
|---|---|---|
| `NOT EXISTS` | `WHERE NOT EXISTS (SELECT 1 FROM Orders o WHERE o.customerId = c.id)` | Часто эффективнее, семантически точнее |
| `NOT IN` | `WHERE id NOT IN (SELECT customerId FROM Orders)` | **Опасно:** если в подзапросе есть `NULL`, результат будет пустым |

## Что важно запомнить

- **Анти-джойн = LEFT JOIN + IS NULL.** Один из трёх основных паттернов «найти отсутствующие записи»
- **NOT IN избегай**, если колонка может содержать `NULL` — это частая и болезненная ошибка
- **NOT EXISTS** семантически ближе к задаче («клиенты, для которых не существует заказа»), но LEFT JOIN + IS NULL читается проще и работает везде
- **Alias для таблицы** (`AS Customers`) в `SELECT` задаёт имя выходной колонки — LeetCode ожидает именно `Customers`
