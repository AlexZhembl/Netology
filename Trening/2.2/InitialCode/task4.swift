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
        case .january: return "Январь"
        case .february: return "Февраль"
        case .march: return "Март"
        case .april: return "Апрель"
        case .may: return "Май"
        case .june: return "Июнь"
        case .july: return "Июль"
        case .august: return "Август"
        case .september: return "Сентябрь"
        case .october: return "Октябрь"
        case .november: return "Ноябрь"
        case .december: return "Декабрь"
        }
    }

    // Опишите новый switch для количества выходных дней
    var numberOfDays: Int {
        switch self {
        case .january: return 16
        case .february, .march, .may, .june, .november: return 9
        default: return 8
        }
    }
}
