import Foundation

class Solution {
    func rotate(array: [Int]) -> [Int] {
        guard array.count > 0 else { return [] }
        var copy = array
        copy.removeFirst()
        
        if let el = array.first {
            copy.append(el)
        }
        return copy
    }
}