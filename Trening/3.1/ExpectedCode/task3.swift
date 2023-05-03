import Foundation

class Solution {
    func filterArray(of marks: [Int]) -> [Int] {
        return marks.filter { $0 > 0 }.sorted()
    }
}
