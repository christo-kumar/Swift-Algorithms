//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Node<T> {
    var value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
        self.next = nil
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
    
    func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last() {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    func last() -> Node<T>? {
        guard var node = head else {
            return nil
        }
        while let next = node.next {
            node = next
        }
        return node
    }
    
    func removeLast() -> T? {
        guard !isEmpty else {
            return nil
        }
        
        var previous: Node<T>?
        var current = head
        
        while let next = current?.next {
            previous = current
            current = next
        }
        
        if let lastNode = current {
            previous?.next = nil
            if previous == nil {
                head = nil
            }
            return lastNode.value
        }
        return nil
    }
    
    func removeFirst() -> T? {
        let firstNode = head
        head = head?.next
        return firstNode?.value
    }
    
    func removeAll() {
        head = nil
    }
    
    func printList() {
        var current = head
        while let node = current {
            print(node.value)
            current = node.next
        }
    }
}

let linkedList = LinkedList<Int>()
linkedList.append(value: 10)
linkedList.append(value: 20)
linkedList.append(value: 30)
linkedList.printList()

//: [Next](@next)
