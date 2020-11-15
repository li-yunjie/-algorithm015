import UIKit

//https://leetcode-cn.com/problems/valid-sudoku/description/

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var seen = Set<String>()
    for i in 0..<9 {
        for j in 0..<9 {
            let currentVal = board[i][j]
            if currentVal == "." {
                continue
            }
            let row = "\(currentVal) found in row \(i)"
            let col = "\(currentVal) found in col \(j)"
            let box = "\(currentVal) found in box \((i/3)) - \((j/3))"
            if seen.contains(row) {
                return false
            } else {
                seen.insert(row)
            }
            if seen.contains(col) {
                return false
            } else {
                seen.insert(col)
            }
            if seen.contains(box) {
                return false
            } else {
                seen.insert(box)
            }
        }
    }
    return true
}
