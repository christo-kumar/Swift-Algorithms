//: [Previous](@previous)

import Foundation

var greeting = "Playground for Stack in Swift"

//: [Next](@next)
class Stack {
  
  private var elements = [Int]()
  
  init() {}
  
  func push(_ element: Int) {
    elements.append(element)
  }
  
  func pop() -> Int? {
    return elements.popLast()
  }
  
  func printStack() {
    print(elements)
  }
  
  var isEmpty: Bool {
    return elements.isEmpty
  }
  
  var peek: Int? {
    return elements.last
  }
  
}

let stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
stack.push(5)
stack.push(6)
stack.push(7)
stack.push(8)
stack.push(9)
stack.pop()
stack.pop()
print(stack.peek ?? 0)
print(stack.pop() ?? -1)
print(stack.peek ?? 0)

