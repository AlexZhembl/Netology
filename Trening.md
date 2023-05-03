# Задача 1 ([примерное условие взял отсюда](https://github.com/netology-code/bios-2-homeworks/blob/bios-20/2.2/README.md))
Вы – начинающий разработчик. Отдел бухгалтерии попросил сделать программу, которая в зависимости от выбранного месяца показывает количество рабочих дней.

Вводные данные: договоримся, что в каждом месяце всегда будет 8 выходных дней.
Для конкретных месяцев есть следующие допущения по выходным:
Январь дополнительно 8 выходных дней;
Февраль - дополнительно 1 день;
Март - дополнительно 1 день;
Май - дополнительно 1 день;
Июнь - дополнительно 1 день;
Ноябрь - дополнительно 1 день.

Использование конструкции if.
Первое, что вы решили попробовать, – реализовать задание через конструкцию if else.

### Что видит пользователь изначально
```swift
class Solution {
    func howManyDays(in month: String) -> Int {
    
    }
}
```
### Примерное решение пользователя
```swift
class Solution {
    func howManyDays(in month: String) -> Int {
        if month == "Январь" {
            return 16
        } else if month == "Февраль" || month == "Март" || month == "Май" || month == "Июнь" || month == "Ноябрь" {
            return 9
        } else {
            return 8
        }
    }
}
```
### Unit-тестовый класс на нашей стороне
```swift
import XCTest
@testable import Netology

class Task_1_Tests: XCTest {
    func testSolution() {
        // Given
        let months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентабрь", "Октябрь", "Ноябрь", "Декабрь"]
        let days = [16, 9, 9, 8, 9, 9, 8, 8, 8, 8, 9, 8]

        // when
        let solution = Solution()
        for (index, month) in months.enumerated() {
            let howMany = solution.howManyDays(in: month)

            // then
            XCTAssertEqual(howMany, days[index])
        }
    }
}
```

# Задача 2
Реализовать задачу 1 с помощью switch/case
### Что видит пользователь изначально
```swift
class Solution {
    /*
     enum Month {
        case january, february, march, april, may, june, july, august, september, october, november, december
     }
     */

    func howManyDays(in month: Month) -> Int {
    
    }
}
```
Здесь специально заккоментирован код, по которому пользователь поймет, что имеет дело с енамом в аргументе

### Примерное решение пользователя
```swift
class Solution {
    /*
     enum Month {
        case january, february, march, april, may, june, july, august, september, october, november, december
     }
     */

    func howManyDays(in month: Month) -> Int {
      switch month {
        case .january: return 16
        case .february, .march, .may, .june, .november: return 9
        default: return 8
        }
    }
}
```

На нашей стороне существует отдельный файл (например task2.swift), в котором описан enum (без него тесты не запустяться, тк енам нигде не объявлен). На нашей стороне он для того, что бы пользователь не мог ничего в нем менять, и для того, что бы не видел доп логики, которую мы будем использовать в тестах.
```swift
enum Month: CaseIterable {
    case january, february, march, april, may, june, july, august, september, october, november, december

    var days: Int {
        switch self {
        case .january: return 16
        case .february, .march, .may, .june, .november: return 9
        default: return 8
        }
    }
}
```
### Unit-тестовый класс на нашей стороне
```swift
import XCTest
@testable import Netology

class Task_2_Tests: XCTest {
    func testSolution() {
        // Given
        let months = Month.allCases

        // when
        let solution = Solution()
        for month in months {
            let howMany = solution.howManyDays(in: month)

            // then
            XCTAssertEqual(howMany, month.days)
        }
    }
}
```
# Задача 3 ([взял задачу номер 2 из этой ссылки](https://github.com/netology-code/bios-2-homeworks/blob/master/3.1/README.md))
### Что видит пользователь изначально
```swift
class Solution {
    func sortedArray(from array: [String]) -> [String] {

    }
}
```
### Примерное решение пользователя
```swift
class Solution {
    func sortedNames(from array: [String]) -> [String] {
        return array.sorted()
    }
}
```
### Unit-тестовый класс на нашей стороне
```swift
import Foundation
import XCTest
@testable import Netology

class Task_3_Tests: XCTest {

    func testSolution_emptyArray() {
        // Given
        let names: [String] = []

        // when
        let solution = Solution()
        let result = solution.sortedNames(from: names)

        // then
        XCTAssertEqual(result, [])
    }

    func testSolution_nonEmptyArray() {
        // Given
        let names: [String] = ["k", "a", "l", "d"]

        // when
        let solution = Solution()
        let result = solution.sortedNames(from: names)

        // then
        XCTAssertEqual(result, ["a", "d", "k", "l"])
    }

    func testSolution_nonEmptyArray_withDuplicates() {
        // Given
        let names: [String] = ["k", "k", "a",  "d", "l", "d"]

        // when
        let solution = Solution()
        let result = solution.sortedNames(from: names)

        // then
        XCTAssertEqual(result, ["a", "d", "d", "k", "k", "l"])
    }

    // любые другие тесты
    //...
}
```
