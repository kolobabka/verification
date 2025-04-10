# Лабораторная работа: Верификация автомата подачи корма для белок в nuXmv

## Описание модели

Модель `squirrel_feeder.smv` представляет собой систему автоматической подачи корма для белок с использованием временной логики. Основные компоненты:

- **Управляющий автомат** с состояниями: `idle`, `dispense`, `wait_empty`
- **Датчики**: 
  - Присутствие белки (`squirrel_present`)
  - Уровень корма (`food_count`)
- **Исполнительные механизмы**:
  - Мотор подачи (`feed_motor`)
  - Сигнальная лампа (`signal_light`)

## Параметры системы

```smv
DEFINE
  MAX_FOOD := 3;                // Макс. количество корма
  MAX_SQUIRREL_ABSENCE := 128;  // Таймер отсутствия белки
```

## Запуск верификации

1. Загрузите модель в nuXmv:
   ```bash
   nuXmv -int squirrel_feeder.smv
   ```

2. Выполните команды верификации:
   ```smv
   go
   check_ltlspec -p "G F squirrel_present"
   check_ltlspec -p "G (squirrel_present -> F controller_state = dispense)"
   check_ltlspec -p "G (food_available = FALSE -> F food_available = TRUE)"
   check_ltlspec -p "G (squirrel_present & food_count = 0 -> (controller_state != dispense U food_count = MAX_FOOD))"
   ```

## Спецификации LTL

### 1. Активность белки
```smv
G F squirrel_present
```
**Смысл**: Белка появляется бесконечно часто (fairness условие)

### 2. Корректность подачи корма
```smv
G (squirrel_present -> F controller_state = dispense)
```
**Смысл**: При появлении белки корм будет выдан

### 3. Пополнение корма
```smv
G (food_available = FALSE -> F food_available = TRUE)
```
**Смысл**: Система гарантирует пополнение корма

### 4. Безопасность при пустом бункере
```smv
G (squirrel_present & food_count = 0 -> 
   (controller_state != dispense U food_count = MAX_FOOD))
```
**Смысл**: При отсутствии корма подача не активируется до пополнения

## Структура модели

### Ключевые переменные:
| Переменная           | Тип                | Описание                     |
|----------------------|--------------------|------------------------------|
| `controller_state`   | `{idle,dispense,wait_empty}` | Состояние контроллера |
| `food_count`         | `0..MAX_FOOD`      | Текущий уровень корма        |
| `refill_timer`       | `0..5`             | Таймер пополнения корма      |

### Логика работы:
1. При появлении белки:
   - Проверка наличия корма
   - Активация мотора при наличии корма
2. При опустошении бункера:
   - Включение сигнальной лампы
   - Автопополнение через 5 тактов

## Анализ результатов

Интерпретация результатов:
Все приведенные выше свойства выполняются для данной спецификации: 
```
nuXmv > go
nuXmv > check_ltlspec -p "G F squirrel_present"
-- specification  G ( F squirrel_present)  is true
nuXmv > check_ltlspec -p "G (squirrel_present -> F controller_state = dispense)"
-- specification  G (squirrel_present ->  F controller_state = dispense)  is true
nuXmv > check_ltlspec -p "G (food_available = FALSE -> F food_available = TRUE)"
-- specification  G (food_available = FALSE ->  F food_available = TRUE)  is true
nuXmv > check_ltlspec -p "G (squirrel_present & food_count = 0 -> (controller_state != dispense U food_count = MAX_FOOD))"
-- specification  G ((squirrel_present & food_count = 0) -> (controller_state != dispense U food_count = MAX_FOOD))  is true
nuXmv > 

```
