import UIKit

//https://leetcode-cn.com/problems/implement-trie-prefix-tree/

class TrieNode< T: Hashable> {
    var value: T?
    weak var parent: TrieNode?
    var children: [T: TrieNode] = [:]
    var isTerminating = false

    init(value: T? = nil, parent: TrieNode? = nil) {
        self.value = value
        self.parent = parent
    }

    func add(child: T) {
        guard children[child] == nil else { return }
        children[child] = TrieNode(value: child, parent: self)
    }
}

class Trie {
    typealias Node = TrieNode<Character>
    fileprivate let root: Node

    init() {
        root = Node()
    }

    func insert(word: String) {
        guard !word.isEmpty else { return }
        var currentNode = root
        let characters = Array(word.lowercased())
        var currentIndex = 0

        while currentIndex < characters.count {
            let char = characters[currentIndex]
            if let child = currentNode.children[char] {
                currentNode = child
            } else {
                currentNode.add(child: char)
                currentNode = currentNode.children[char]!
            }
            currentIndex += 1
            if currentIndex == characters.count {
                currentNode.isTerminating = true
            }
        }
    }

    func contains(word: String) -> Bool {
        guard !word.isEmpty else { return false }
        var currentNode = root

        let characters = Array(word.lowercased())
        var currentIndex = 0

        while currentIndex < characters.count, let child = currentNode.children[characters[currentIndex]] {
            currentIndex += 1
            currentNode = child
        }
        if currentIndex == characters.count && currentNode.isTerminating {
            return true
        } else { return false }
    }
}

let trie = Trie()

trie.insert(word: "cute")
trie.contains(word: "cute") // true

trie.contains(word: "cut") // false
trie.insert(word: "cut")
trie.contains(word: "cut") // true
