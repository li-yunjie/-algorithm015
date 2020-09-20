import UIKit

//https://leetcode-cn.com/problems/assign-cookies/

func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    let g = g.sorted()
    let s = s.sorted()
    var res = 0

    var g_idx = 0
    var s_idx = 0

    while g_idx < g.count && s_idx < s.count {
        if g[g_idx] <= s[s_idx] {
            res += 1
            g_idx += 1
            s_idx += 1
        } else {
            s_idx += 1
        }
    }
    return res
}
