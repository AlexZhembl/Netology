 func howManyDays(in month: Month) -> Int {
      switch month {
        case .january: return 16
        case .february, .march, .may, .june, .november: return 9
        default: return 8
        }
}