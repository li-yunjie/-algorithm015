import UIKit

//https://leetcode-cn.com/problems/permutations/

var result: [[Int]] = []
var mutableNums:[Int] = []

func permute(_ nums: [Int]) -> [[Int]] {
    mutableNums = nums
    backtrack(nums.count, &mutableNums, 0)
    print("result: \(result)")
    return result
}

func backtrack(_ n: Int,_ nums: inout [Int], _ first: Int) {
    //terminator
    print("first: \(first)")
    print("n: \(n)")
    if first == n {
        result.append(nums)
        return
    }
    //process current level logic
    for i in first..<nums.count {
        nums.swapAt(first, i)
        backtrack(nums.count, &nums, first + 1)
        nums.swapAt(first, i)
    }
}

let testArray = [1, 2, 3]
permute(testArray)
