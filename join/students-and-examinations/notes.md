# Students and Examinations

## Инсайт

Нужно для **каждой пары** «студент × предмет» показать число сданных экзаменов, даже если студент их не сдавал (0). Это три шага:

1. `CROSS JOIN` — перемножить `Students × Subjects`, получить все возможные пары
2. `LEFT JOIN Examinations` по двум полям — прицепить сданные экзамены
3. `COUNT(e.student_id)` — посчитать, считая NULL за 0

## Решение

### CROSS JOIN + LEFT JOIN + COUNT(колонка) — O(s·sub·e), O(1)

```sql
SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON sub.subject_name = e.subject_name AND s.student_id = e.student_id
GROUP BY s.student_id, s.student_name, sub.subject_name;
```

## Что важно запомнить

- **CROSS JOIN = декартово произведение.** Все строки левой таблицы × все строки правой. Здесь это способ получить «каждый студент с каждым предметом»
- **LEFT JOIN по двум условиям.** Экзамен привязывается и к студенту, и к предмету. Если взять только `student_id`, экзамены задвоятся между предметами
- **`COUNT(колонка)` игнорирует NULL, `COUNT(*)` — нет.** Для пары без экзаменов LEFT JOIN даёт строку с NULL в `e.student_id`. `COUNT(*)` посчитал бы её как 1, `COUNT(e.student_id)` правильно даёт 0
- **GROUP BY по всем неагрегированным колонкам:** `student_id`, `student_name`, `subject_name`. Иначе СУБД не поймёт, как группировать
- **Паттерн «все комбинации + счётчик»** встречается часто: отчёты, статистика, дашборды. CROSS JOIN + LEFT JOIN + COUNT — базовый инструмент для этого
