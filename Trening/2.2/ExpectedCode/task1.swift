class Solution {
    func howManyDays(in month: String) -> Int {
        if month == "Январь" {
            return 16
        } else if month == "Февраль" || month == "Март" || month == "Май" || month == "Июнь" || month == "Ноябрь" {
            return 9
        } else {
            return 8
        }
    }
}