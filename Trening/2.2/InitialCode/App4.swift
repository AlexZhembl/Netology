import Foundation

@main
public struct App {

    public static func main() {
        let month = Month.july
        print("Month: \(month.description), numberOfDays: \(month.numberOfDays)")
    }
}
