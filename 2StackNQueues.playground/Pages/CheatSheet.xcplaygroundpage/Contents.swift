//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

struct Stack<T> {
    private var elements: [T] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    var peek: T? {
        return elements.last
    }
    mutating func push(_ value: T) {
        elements.append(value)
    }
    mutating func pop() -> T? {
        return elements.popLast()
    }
}

var stack = Stack<Int>()
stack.push(10)
stack.push(20)
stack.push(30)

print(stack.pop()!)   // 30
print(stack.peek!)    // 20
print(stack.isEmpty)  // false


struct Queue<T> {
    private var elements: [T] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var peek: T? {
        return elements.first
    }
    
    
    mutating func enqueue(_ value: T) {
        elements.append(value)
    }
    
    mutating func dequeue() -> T? {
        guard !isEmpty else { return nil }
        return elements.removeFirst()
    }
}

var queue = Queue<Int>()
queue.enqueue(10)
queue.enqueue(20)
queue.enqueue(30)

print(queue.dequeue()!) // 10
print(queue.peek!)      // 20
print(queue.isEmpty)    // false
//: [Next](@next)
