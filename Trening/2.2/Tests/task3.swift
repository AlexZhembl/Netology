import XCTest
@testable import Netology

class Task3Tests: XCTestCase {
    func testSolution() {
        // Given
        let months = Month.allCases

        // when
        let solution = Solution()
        for month in months {
            let howMany = solution.howManyDays(in: month)

            // then
            if month == .january {
                XCTAssertEqual(howMany, "В месяце более 9 выходных дней", "for \(month)")
            } else {
                XCTAssertEqual(howMany, "В месяце 9 либо менее выходных дней", "for \(month)")
            }
        }
    }
}

extension Month: CaseIterable {
    public static var allCases: [Month] = [.january, .february, .march, .april, .may, .june, .july, .august, .september, .october, .november, .december]
}