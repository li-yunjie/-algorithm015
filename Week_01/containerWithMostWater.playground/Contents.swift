import UIKit

//https://leetcode-cn.com/problems/container-with-most-water/solution/11sheng-zui-duo-shui-de-rong-qi-by-cobbly/

func maxArea(_ height: [Int]) -> Int {
    var i = 0
    var j = height.count-1
    var result = 0
    while i < j {
        let area = (j - i) * min(height[i], height[j])
        result = max(result, area)
        if height[i] < height[j] {
            i = i + 1
        } else {
            j = j - 1
        }
    }
    return result
}
