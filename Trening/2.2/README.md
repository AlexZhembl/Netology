# 2.2. Логические типы и операции с ними

## История
Вы – начинающий разработчик. Отдел бухгалтерии попросил сделать программу, которая в зависимости от выбранного месяца показывает количество рабочих дней.

Вводные данные: договоримся, что в каждом месяце всегда будет 8 выходных дней.
Для конкретных месяцев есть следующие допущения по выходным:
Январь - дополнительно 8 выходных дней;
Февраль - дополнительно 1 день;
Март - дополнительно 1 день;
Май - дополнительно 1 день;
Июнь - дополнительно 1 день;
Ноябрь - дополнительно 1 день.

## Задача 1
Использование конструкции if.
Первое, что вы решили попробовать, – реализовать задание через конструкцию if else.

### Описание задания
В имеющейся функции `howManyDays(in month: String) { ... }` исправьте и дополните конструкцию if-else так, что бы для каждого входного параметра `month` возвращалось соответсвующее колличество выходных дней. Помните, что названия месяцев начинаются с заглавной буквы.

### Начальный код задания
[/initial_code/task1.py](https://github.com/netology-code/pd-simulator/blob/main/py/6.1/initial_code/task1.py)

### Эталонное решение эксперта
[/expected_code/task1.py](https://github.com/netology-code/pd-simulator/blob/main/py/6.1/expected_code/task1.py)

### Примеры
| month | результат    |
| :---:   | :---: |
| "Март" | 9   |
| "Октябрь" | 8   |


## Задача 2
Использование конструкции switch.

### Описание задания
При реализации первого задания у вас получилась довольно большая конструкция и вы принимаете решение упростить алгоритм. Вместе с этим поменялась и ваша функция `howManyDays(in month: Month) { ... }`: теперь параметр `month` имеет тип `enum Month { ... }`, описанный в файле `task2_env.swift`.
Увидев это, вы принимаете решение использовать конструкцию switch вместо if else для выполнения задания.

### Начальный код задания
[/initial_code/task2.py](https://github.com/netology-code/pd-simulator/blob/main/py/6.1/initial_code/task2.py)

### Файл task2_env.swift (защищен от редактирования)
[/initial_code/task2.py](https://github.com/netology-code/pd-simulator/blob/main/py/6.1/initial_code/task2.py)

### Эталонное решение эксперта
[/expected_code/task2.py](https://github.com/netology-code/pd-simulator/blob/main/py/6.1/expected_code/task2.py)

### Примеры
| month | результат    |
| :---:   | :---: |
| .march | 9   |
| .october | 8   |


## Задача 3
Использование тернарного оператора.

### Описание задания
В этом задании вы сделаете мини-анализ данных. Вам нужно проверить, имеет ли данный месяц более, чем 9 выхожных дней. Но условия стали более строгими: для проверки вам доступна всего 1 строка кода!
Ваша функция `howManyDays(in month: Month) -> String { ... }` теперь должна вернуть один из двух вариантов строки: `"В месяце более 9 выходных дней"` либо `"В месяце 9 либо менее выходных дней"`.
Параметр `month` имеет тип `enum Month { ... }`, описанный в файле `task3_env.swift`.

### Начальный код задания
[/initial_code/task3.py](https://github.com/netology-code/pd-simulator/blob/main/py/6.1/initial_code/task3.py)

### Эталонное решение эксперта
[/expected_code/task3.py](https://github.com/netology-code/pd-simulator/blob/main/py/6.1/expected_code/task3.py)

### Примеры
| month | результат    |
| :---:   | :---: |
| .march | "В месяце 9 либо менее выходных дней"   |
| .october | "В месяце 9 либо менее выходных дней"   |
| .april | "В месяце 9 либо менее выходных дней"   |


### Подсказка
В нашей задаче лишь один месяц имеет 16 выходных дней, остальные 9 и менее.

## Задача 4* (со звездочкой)
Вы стали более опытным разработчиком и теперь готовы использовать все возможности `enum` для самого элегантного решения наших задач.

### Описание задания
В задачах 2 и 3 вы реализовывали функцию `howManyDays(in month: Month) -> String { ... }`, где параметром был `enum Month { ... }`. Теперь пора узнать, что данная функция (а точнее ее реализация) может быть частью самого `enum Month { ... }`, а не находится в отдельном классе. 

### Материал для дополнительного изучения, чтобы выполнить задание со звездочкой: 
https://swiftbook.ru/content/languageguide/enumerations/  
https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html  
https://swiftbook.ru/content/languageguide/properties/  
https://docs.swift.org/swift-book/LanguageGuide/Properties.html
https://metanit.com/swift/tutorial/3.8.php

Реализуйте свойства `var description: String` и `var numberOfDays: Int`, дополнив и исправив в имеющемся коде места с `...`. Помните, что названия месяцев должны начинаться с заглавной буквы.

### Начальный код задания
[/initial_code/task4.py](https://github.com/netology-code/pd-simulator/blob/main/py/6.1/initial_code/task4.py)

### Эталонное решение эксперта
[/expected_code/task4.py](https://github.com/netology-code/pd-simulator/blob/main/py/6.1/expected_code/task4.py)
