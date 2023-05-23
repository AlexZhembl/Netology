import Foundation

@main
public struct App {

    public static func main() {
        let solution = Solution()
        var girls = ["Inna, Vlada, Karolina"]
        solution.mixArrays(of: ["Ivan, Petr, Samuil"], girls: &girls)
        print("Результат решения: \(girls)")
    }
}