import UIKit

protocol Stackable {
    associatedtype Element
    mutating func push(_ element: Element)
    func peek() -> Element?
    mutating func pop() -> Element?
    mutating func removeAll()
}

struct Stack<T>: Stackable {
    typealias Element = T
    fileprivate var elements = [Element]()

    mutating func push(_ element: Element) {
        elements.append(element)
    }

    func peek() -> T? {
        return elements.last
    }

    mutating func pop() -> T? {
        return elements.popLast()
    }

    mutating func removeAll() {
        elements.removeAll()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return "\(elements)"
    }
}

protocol Enqueuable {
    associatedtype Element
    mutating func enqueue(_ element: Element)
    func peek() -> Element?
    mutating func dequeue() -> Element?
    mutating func removeAll()
}

struct Queue<T>: Enqueuable {
    typealias Element = T
    fileprivate var elements = [Element]()

    mutating func enqueue(_ element: T) {
        elements.append(element)
    }

    func peek() -> T? {
        return elements.first
    }

    mutating func dequeue() -> T? {
        guard elements.isEmpty == false else { return nil }
        return elements.removeFirst()
    }

    mutating func removeAll() {
        elements.removeAll()
    }
}

//extra linked list with protocol
protocol Linkable: AnyObject {
    associatedtype D
    var value: D { get }
    var next: Self? { get set }
    var previous: Self? { get set }

    init(value: D)
}

final fileprivate class Node<T>: Linkable {
    private var storage: T

    var next: Node<T>?
    var previous: Node<T>?

    var value: T {
        return storage
    }

    init(value: T) {
        storage = value
    }
}
