import UIKit

class Node<T> {
    var value: T
    var next: Node?
    weak var previous: Node?

    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    private var head: Node<T>?
    var isEmpty: Bool {
        return head == nil
    }
    var first: Node<T>? {
        return head
    }
    var last: Node<T>? {
        guard var node = head else {
            return nil
        }
        while let next = node.next {
            node = next
        }
        return node
    }

    func append(value: T) {
      let newNode = Node(value: value)
      if let lastNode = last {
        newNode.previous = lastNode
        lastNode.next = newNode
      } else {
        head = newNode
      }
    }

    var count: Int {
        guard let node = head else {
            return 0
        }
        var count = 1
        while let _ = node.next {
            node.next
            count += 1
        }
        return count
    }

    var print: String {
        var s = "["
        var node = head
        while  node != nil {
            s += "\(node!.value)"
            node = node!.next
            if node != nil { s += ", "}
        }
        return s + " ]"
    }

    func node(atIndex index: Int) -> Node<T> {
        if index == 0 {
            return head!
        } else {
            var node = head!.next
            for _ in 1..<index {
                node = node?.next
                if node == nil { break }
            }
            return node!
        }
    }

    func insert(value: T, atIndex index: Int) {
        let newNode = Node(value: value)
        if index == 0 {
            newNode.next = head
            head?.previous = newNode
            head = newNode
        } else {
            let previousNode = self.node(atIndex: index-1)
            let nextNode = previousNode.next

            newNode.previous = previousNode
            newNode.next = previousNode.next
            previousNode.next = newNode
            nextNode?.previous = newNode
        }
    }

    func remove(node: Node<T>) -> T {
        let previousNode = node.previous
        let nextNode = node.next

        if let previousNode = previousNode {
            previousNode.next = nextNode
        } else {
            head = nextNode
        }
        nextNode?.previous = previousNode

        node.previous = nil
        node.next = nil
        return node.value
    }

    func removeAt(_ index: Int) -> T {
        let nodeToRemove = node(atIndex: index)
        return remove(node: nodeToRemove)
    }
}
