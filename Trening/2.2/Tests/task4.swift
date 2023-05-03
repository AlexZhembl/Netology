import XCTest
@testable import Netology

class Task4Tests: XCTestCase {
    func testSolution() {
        // Given
        let months = Month.allCases

        // when
        for month in months {
            let description = month.description

            // then
            switch month {
            case .january: XCTAssertEqual(description, "Январь", "for \(month)")
            case .february: XCTAssertEqual(description, "Февраль", "for \(month)")
            case .march: XCTAssertEqual(description, "Март", "for \(month)")
            case .april: XCTAssertEqual(description, "Апрель", "for \(month)")
            case .may: XCTAssertEqual(description, "Май", "for \(month)")
            case .june: XCTAssertEqual(description, "Июнь", "for \(month)")
            case .july: XCTAssertEqual(description, "Июль", "for \(month)")
            case .august: XCTAssertEqual(description, "Август", "for \(month)")
            case .september: XCTAssertEqual(description, "Сентябрь", "for \(month)")
            case .october: XCTAssertEqual(description, "Октябрь", "for \(month)")
            case .november: XCTAssertEqual(description, "Ноябрь", "for \(month)")
            case .december: XCTAssertEqual(description, "Декабрь", "for \(month)")
            }

            let numberOfDays = month.numberOfDays
            switch month {
            case .january: XCTAssertEqual(numberOfDays, 16, "for \(month)")
            case .february, .march, .may, .june, .november: XCTAssertEqual(numberOfDays, 9, "for \(month)")
            default: XCTAssertEqual(numberOfDays, 8, "for \(month)")
            }
        }
    }
}

extension Month: CaseIterable {
    public static var allCases: [Month] = [.january, .february, .march, .april, .may, .june, .july, .august, .september, .october, .november, .december]
}
