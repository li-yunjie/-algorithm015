import UIKit

//https://leetcode-cn.com/problems/friend-circles/

func findCircleNum(_ M: [[Int]]) -> Int {
    if M.count == 0 || M[0].count == 0 { return 0 }
    let n = M.count
    var count = 0
    var visited = Array(repeating: false, count: n)
    for i in 0..<n {
        if !visited[i] {
            dfs(i, &visited, M)
            count += 1
        }
    }
    return count
}

func dfs(_ i: Int, _ visited: inout [Bool], _ M:[[Int]]) {
    visited[i] = true
    for j in 0..<M.count {
        if i == j { continue }
        if !visited[j] && M[i][j] == 1 {
            visited[j] = true
            dfs(j, &visited, M)
        }
    }
}
