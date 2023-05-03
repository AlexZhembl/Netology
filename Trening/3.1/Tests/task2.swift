import XCTest
@testable import Netology

class Task2Tests: XCTestCase {
    func testSolution() {
        // Given
        let boys = ["Александр", "Максим", "Андрей"]
        let girls = ["Мария", "Анна", "Виктория", "Настя"]
        let sorted = (boys + girls).sorted()

        // when
        let result = Solution().sortArray(of: boys, girls: girls)
        print(result)
        for i in 0..<result.count {
            XCTAssertEqual(result[i], sorted[i], "по индексу \(i)")
        }
    }

    func testSolutionDuplicates() {
        // Given
        let boys = ["Александр", "Максим", "Андрей", "Андрей", "Андрей"]
        let girls = ["Виктория", "Мария", "Анна", "Виктория", "Настя"]
        let sorted = (boys + girls).sorted()

        // when
        let result = Solution().sortArray(of: boys, girls: girls)
        for i in 0..<result.count {
            XCTAssertEqual(result[i], sorted[i], "по индексу \(i)")
        }
    }
}
