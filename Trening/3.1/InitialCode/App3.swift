import Foundation

@main
public struct App {

    public static func main() {
        let solution = Solution()
        let result = solution.filterArray(of: [1, 5 , -10, 9, 4, 2, 0 , -4])
        print("Результат решения: \(result)")
    }
}