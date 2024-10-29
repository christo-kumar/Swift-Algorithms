//: [Previous](@previous)

import Foundation

var greeting = "Queue Playground"

//: [Next](@next)
class Queue {
  var elements = [Int]()
  init () {}
  
  var isEmpty: Bool {
    elements.isEmpty
  }
  
  var peek: Int? {
    elements.first
  }
  
  func enqueue(_ element: Int) {
    elements.append(element)
  }
  
  func dequeue() -> Int? {
    elements.removeFirst()
  }
  
  func printQueue() {
    print(elements)
  }
}

let queue = Queue()
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.dequeue()
queue.dequeue()
queue.printQueue()
