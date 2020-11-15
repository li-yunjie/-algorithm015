import UIKit

//https://leetcode-cn.com/problems/power-of-two/

func isPowerOfTwo(_ n: Int) -> Bool {
    return n > 0 ? (n&(n-1) == 0) : false
}
