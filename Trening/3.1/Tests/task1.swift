import XCTest
@testable import Netology

class Task1Tests: XCTestCase {
    func testSolution() {
        // Given
        let boys = ["Александр", "Максим", "Андрей"]
        var girls = ["Мария", "Анна", "Виктория", "Настя"]

        // when
        Solution().mixArrays(of: boys, girls: &girls)

        let slice = Array(girls[0..<boys.count])
        for boy in boys {
            XCTAssertTrue(slice.contains(boy), "В начале массива не хватает \(boy)")
        }
    }
}
