# Rising Temperature

## Инсайт

Нужно сравнить каждую запись с предыдущим днём. Это self-join таблицы `Weather` со сдвигом на 1 день. Главный инструмент — арифметика дат: `recordDate + INTERVAL '1 day'`.

## Решение

### Self-join через INTERVAL

```sql
SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON w1.recordDate = w2.recordDate + INTERVAL '1 day'
WHERE w1.temperature > w2.temperature;
```

`w1` — текущий день, `w2` — предыдущий. Джойним по `дата = дата + 1 день`, фильтруем где температура выросла.

## Альтернативы

| Подход | Синтаксис | Когда использовать |
|---|---|---|
| `INTERVAL` | `date + INTERVAL '1 day'` | PostgreSQL — самый читаемый |
| Арифметика дат | `w1.recordDate - w2.recordDate = 1` | Универсально, работает в большинстве СУБД |
| `DATE_ADD` | `DATE_ADD(w2.recordDate, INTERVAL 1 DAY)` | MySQL |
| `DATEDIFF` | `DATEDIFF(w1.recordDate, w2.recordDate) = 1` | MySQL / SQL Server |
| Оконная `LAG()` | `LAG(temperature) OVER (ORDER BY recordDate)` | Позволяет обратиться к значению предыдущей строки без self-join |

## Что важно запомнить

- **Арифметика дат:** к дате можно прибавлять интервал — `date + INTERVAL '1 day'`. Синтаксис зависит от СУБД, но идея везде одна
- **INTERVAL — не просто число:** `INTERVAL '1 day'`, `INTERVAL '2 hours'`, `INTERVAL '1 month'` — можно прибавлять любые промежутки
- **Self-join для сравнения строк одной таблицы:** распространённый паттерн, когда нужно сопоставить строки друг с другом по какому-то смещению
- **Оконная `LAG()`** — современная альтернатива self-join для подобных задач: чище и часто быстрее на больших данных
