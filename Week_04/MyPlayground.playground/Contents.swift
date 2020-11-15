import UIKit

class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        if nums.count < 4 {
            return [[Int]]()
        }
        let newNums = nums.sorted()
        let count = newNums.count
        var array = [[Int]]()
        for (i, num) in newNums.enumerated() {
            let start = i + 1
            if i > 0 && newNums[i] == newNums[i - 1] {
                continue
            }
            for j in start..<count {
                if j > start && newNums[j] == newNums[j - 1] {
                    continue
                }
                var left = j + 1
                var right = count - 1
                while left < right {
                    let sum = num + newNums[j] + newNums[left] + newNums[right]
                    if sum == target {
                        array.append([num, newNums[j], newNums[left], newNums[right]])
                        while left < right && newNums[left] == newNums[left+1] {
                            left += 1
                        }

                        while left < right && newNums[right] == newNums[right-1] {
                            right -= 1
                        }
                        left += 1
                        right -= 1
                    } else if sum > target {
                        right -= 1
                    } else {
                        left += 1
                    }
                }
            }
        }
        return array
    }
}
