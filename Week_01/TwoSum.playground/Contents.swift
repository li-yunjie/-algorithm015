import UIKit

//https://leetcode-cn.com/problems/two-sum/

func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        let counterpart = target - nums[i]
        for j in i + 1..<nums.count {
            if nums[j] == counterpart {
                return [i, j]
            }
        }
    }
    return []
}

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = Dictionary<Int, Int>()
    var i = 0
    for n in nums {
        dict[n] = i
        i = i + 1
    }
    var arr = [-1, -1]

    var j = 0
    for n in nums {
        if dict.keys.contains(target - n) && j != dict[target - n] {
            arr[0] = j
            arr[1] = dict[target - n] ?? -1
            return arr
        }
        j = j + 1
    }
    return arr
}

let testArray = [2, 7, 11, 15]
twoSum1(testArray, 18)
twoSum2(testArray, 9)
