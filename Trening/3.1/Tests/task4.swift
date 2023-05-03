import XCTest
@testable import Netology

class Task4Tests: XCTestCase {
    func testSolution() {
        // Given
        let marks = [1, 2, 3]
        let rotated = [2, 3, 1]

        // when
        let result = Solution().rotate(array: marks)
        print(result)
        print(result)
        for i in 0..<result.count {
            XCTAssertEqual(result[i], rotated[i], "по индексу \(i)")
        }
    }

    func testSolutionLongerArray() {
        // Given
        let marks = [1, 2, 3, -3, -1, 0]
        let rotated = [2, 3, -3, -1, 0, 1]

        // when
        let result = Solution().rotate(array: marks)
        print(result)
        print(result)
        for i in 0..<result.count {
            XCTAssertEqual(result[i], rotated[i], "по индексу \(i)")
        }
    }

    func testSolutionEmptyArray() {
        // Given
        let marks: [Int] = []
        let rotated: [Int] = []

        // when
        let result = Solution().rotate(array: marks)
        print(result)
        print(result)
        for i in 0..<result.count {
            XCTAssertEqual(result[i], rotated[i], "по индексу \(i)")
        }
    }
}
