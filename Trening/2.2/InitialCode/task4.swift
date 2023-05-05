import Foundation

enum Month {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december

    var description: String {
        switch self {
        case ...: return "Январь"
        case .february: return ...
        ...
        }
    }

    var numberOfDays: Int {
        ...
    }
}
