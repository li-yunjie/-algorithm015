import UIKit

class Node {
    var val: Int
    var childen: [Node]

    init(_ val: Int) {
        self.val = val
        self.childen = []
    }
}

func preorder(_ root: Node?) -> [Int] {
    guard let root = root else { return [] }
    var result: [Int] = []
    var nodeList: [Node] = [root]

    while !nodeList.isEmpty {
        let node = nodeList.removeLast()
        result.append(node.val)

        for child in node.childen.reversed() {
            nodeList.append(child)
        }
    }
    return result
}
