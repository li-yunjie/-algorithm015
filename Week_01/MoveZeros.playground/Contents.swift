import UIKit

//https://leetcode-cn.com/problems/move-zeroes/solution/

//increment index j when num is not 0, j used to track index position of 0, and swap 0 when next non-0 number is found
func moveZeroes1(_ nums: inout [Int]) {
    var j = 0
    for i in 0..<nums.count {
        if(nums[i] != 0) {
            (nums[i], nums[j]) = (nums[j], nums[i])
            j += 1
        }
    }
}

var testArray = [1,0,3,3,4,0,9,0]
moveZeroes1(&testArray)

func moveZeroes2(_ nums: inout [Int]) {
    var offSet = 0
    for i in 0..<nums.count {
        if nums[i] == 0 { offSet += 1}
        else { nums.swapAt(i, i-offSet)}
        }
}

moveZeroes2(&testArray)

