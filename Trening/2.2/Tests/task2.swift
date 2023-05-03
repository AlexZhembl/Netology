import XCTest
@testable import Netology

class Task2Tests: XCTestCase {
    func testSolution() {
        // Given
        let months = Month.allCases

        // when
        let solution = Solution()
        for month in months {
            let howMany = solution.howManyDays(in: month)

            // then
            XCTAssertEqual(howMany, month.days, "For \(month)")
        }
    }
}

extension Month: CaseIterable {
    public static var allCases: [Month] = [.january, .february, .march, .april, .may, .june, .july, .august, .september, .october, .november, .december]

    var days: Int {
        switch self {
        case .january: return 16
        case .february, .march, .may, .june, .november: return 9
        default: return 8
        }
    }
}