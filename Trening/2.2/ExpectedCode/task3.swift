class Solution {

    func howManyDays(in month: Month) -> String {
        return month == .january ? "В месяце более 9 выходных дней" : "В месяце 9 либо менее выходных дней"
    }
}