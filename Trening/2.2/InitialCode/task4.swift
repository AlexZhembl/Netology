import Foundation

enum Month {
    // Названия месяцев менять нельзя
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

    // Дополните switch, замение "..." на необходимый код
    var description: String {
        switch self {
        case ...: return "Январь"
        case .february: return ...
        ...
        }
    }

    // Опишите новый switch для количества выходных дней
    var numberOfDays: Int {
        ...
    }
}