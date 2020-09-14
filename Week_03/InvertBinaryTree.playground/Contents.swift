import UIKit

//https://leetcode-cn.com/problems/invert-binary-tree/

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init(_ val: Int) {
        self.val = val
    }
}

func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    let right = invertTree(root.right)
    let left = invertTree(root.left)
    root.left = right
    root.right = left
    return root
}
