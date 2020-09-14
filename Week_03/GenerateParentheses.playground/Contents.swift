import UIKit

//https://leetcode-cn.com/problems/generate-parentheses/

var result: [String] = []
func generateParenthesis(_ n: Int) -> [String] {
    generate(n, left: 0, right: 0, string: "")
    return result
}

func generate(_ n: Int, left: Int, right: Int, string: String) {
    //terminator
    if left == n && right == n {
        result.append(string)
        return
    }
    //process
    //drill down
    if left < n {
        generate(n, left: left+1, right: right, string: "\(string)(")
    }
    if left > right {
        generate(n, left: left, right: right+1, string: "\(string))")
    }
    //clear current state
}

generateParenthesis(3)
