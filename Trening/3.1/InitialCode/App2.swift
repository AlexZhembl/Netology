import Foundation

@main
public struct App {

    public static func main() {
        let solution = Solution()
        let girls = ["Inna", "Vlada", "Karolina"]
        let result = solution.sortArray(of: ["Ivan", "Petr", "Samuil"], girls: girls)
        print("Результат решения: \(result)")
    }
}
