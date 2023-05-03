import XCTest
@testable import App

class Task1Tests: XCTestCase {
    func testSolution() {
        // Given
        let months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
        let days = [16, 9, 9, 8, 9, 9, 8, 8, 8, 8, 9, 8]

        // when
        let solution = Solution()
        for (index, month) in months.enumerated() {
            let howMany = solution.howManyDays(in: month)

            // then
            XCTAssertEqual(howMany, days[index], "for \(month)")
        }
    }
}
