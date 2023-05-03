# 2.2. Коллекции: массив.

## Задача 1
Вы работаете над приложением "Электронный дневник", ваша задача подготовить загрузку списков студентов в приложение и дальнейшую работу с данными.

### Описание задания
В имеющейся функции `func mixArrays(of boys: [String], girls: inout [String]) { ... }` добавьте элементы массива `boys` в начало массива `girls` при помощи цикла и функции `insert()`. В данной функции параметр `girls` помечен как `inout`: это означает, что внутри функции массив `girls` объявлен как `var` и в него можно добавлять элементы.
Порядок добавления не важен, главное что бы все элементы `boys` находилсь в начале `girls`.

### Начальный код задания
[/InitialCode/task1.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/InitialCode/task1.swift)

### Эталонное решение эксперта
[/ExpectedCode/task1.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/ExpectedCode/task1.swift)

### Тесты
[/ExpectedCode/task1.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/Tests/task1.swift)

### Примеры
| boys | girls    | массив girls после выполнения функции    |
| :---:   | :---: |  :---: |
|  ["Александр", "Максим", "Андрей"] |["Мария", "Анна", "Виктория", "Настя"]   |["Александр", "Максим", "Андрей", "Мария", "Анна", "Виктория", "Настя"] |
|  ["Александр", "Максим", "Андрей"] |["Мария", "Анна", "Виктория", "Настя"]   |["Андрей", "Максим",  "Александр", "Мария", "Анна", "Виктория", "Настя"] |


## Задача 2
Сортировка студентов по алфавиту

### Описание задания
Используя массивы `boys` и `girls`, создайте общий массив студентов и отсортируйте его элементы по алфавиту. Заметьте, что теперь в функции `func mixArrays(of boys: [String], girls: [String]) { ... }` массив `girls` не помечет как `inout`: это означает, что вы не сможете его модифицировать напрямую.
Для сортировки попрактикуйтесь с функцией sort().

### Начальный код задания
[/InitialCode/task2.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/InitialCode/task2.swift)

### Эталонное решение эксперта
[/ExpectedCode/task2.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/ExpectedCode/task2.swift)

### Тесты
[/ExpectedCode/task2.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/Tests/task2.swift)

### Примеры
| boys | girls    | массив girls после выполнения функции    |
| :---:   | :---: |  :---: |
|  ["Александр", "Максим", "Андрей"] |["Мария", "Анна", "Виктория", "Настя"]   |["Александр", "Андрей", "Анна", "Виктория", "Максим", "Мария", "Настя"] |


## Задача 3
Фильтрация результатов

### Описание задания
К вам попал массив из оценок студентов. Но кто-то из молодых учителей занес туда отрицательные числа и даже нули.
Вам потребуется отфильтровать массив так, что бы остались только положительные числа. Затем отсортировать полученный массив по возрастанию оценок.
Для выполнения задания используйте функцию `filter()` для удаления.
Как вы считаете, будет ли разница в последовательности выполнения операций сортировки и фильтрации?

### Начальный код задания
[/InitialCode/task3.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/InitialCode/task3.swift)

### Эталонное решение эксперта
[/ExpectedCode/task3.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/ExpectedCode/task3.swift)

### Тесты
[/ExpectedCode/task3.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/Tests/task3.swift)

### Примеры
| marks | результат    |
| :---:   | :---: |
| [-1, -2, -3, 1, -2, 2, -3, 5, 5, 0, -1] | [1, 2, 5, 5]   |


## Задача 4* (со звездочкой)
Двигаем элементы массива

### Описание задания
Реализуйте функцию  `func rotate(array: [Int]) -> [Int]` таким образом, что бы в результате получить массив, в котором все элементы будут сдвинуты на 1 индек влево относительно входного массива `array` (первый элемент переместиться в конец).

### Начальный код задания
[/InitialCode/task3.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/InitialCode/task3.swift)

### Эталонное решение эксперта
[/ExpectedCode/task4.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/ExpectedCode/task4.swift)

### Тесты
[/ExpectedCode/task4.py](https://github.com/AlexZhembl/Netology/blob/master/Trening/3.1/Tests/task4.swift)

### Примеры
| array | результат    |
| :---:   | :---: |
|[1, 2, 3] |[2, 3, 1]   |
|[1, 2, 3, -3, -1, 0] |[2, 3, -3, -1, 0, 1]   |
