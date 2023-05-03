import XCTest
@testable import Netology

class Task3Tests: XCTestCase {
    func testSolution() {
        // Given
        let marks = [-1, -2, -3, 1, -2, 2, -3, 5, 5, 0, -1]
        let filtered = marks.filter { $0 > 0 }.sorted()

        // when
        let result = Solution().filterArray(of: marks)
        print(result)
        for i in 0..<result.count {
            XCTAssertEqual(result[i], filtered[i], "по индексу \(i)")
        }
    }

    func testAllAreNegative() {
        // Given
        let marks = [-1, -2, -3, -1, -2, -2, -3, -5, -5, -1]
        let filtered = marks.filter { $0 > 0 }.sorted()

        // when
        let result = Solution().filterArray(of: marks)
        print(result)
        for i in 0..<result.count {
            XCTAssertEqual(result[i], filtered[i], "по индексу \(i)")
        }
    }
}
