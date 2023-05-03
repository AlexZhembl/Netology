import Foundation

class Solution {
    func mixArrays(of boys: [String], girls: inout [String]) {
        for boy in boys {
            girls.insert(boy, at: 0)
        }
    }
}