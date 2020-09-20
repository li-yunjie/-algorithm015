import UIKit

//https://leetcode-cn.com/problems/lemonade-change/

func lemonadeChange(_ bills: [Int]) -> Bool {
        var bill5: Int = 0
        var bill10: Int = 0
        for bill in bills {
            switch bill {
            case 5:
                bill5 += 1
            case 10:
                if bill5 == 0 {
                    return false
                }
                bill5 -= 1
                bill10 += 1
            case 20:
                if bill5 > 0 && bill10 > 0 {
                    bill5 -= 1
                    bill10 -= 1
                } else if bill5 >= 3 {
                    bill5 -= 3
                } else {
                    return false
                }
            default:
                assertionFailure("not supported bill type")
            }
        }
    return true
}
