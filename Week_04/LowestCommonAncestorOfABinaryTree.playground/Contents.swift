import UIKit

//https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-tree/

class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    if (root?.val == nil || root?.val == p?.val || root?.val == q?.val) { return root }
    let left = lowestCommonAncestor(root!.left, p, q)
    let right = lowestCommonAncestor(root!.right, p, q)
    if left != nil && right != nil {
        return root
    } else if left != nil {
        return left
    } else if right != nil {
        return right
    }
    return nil
}
