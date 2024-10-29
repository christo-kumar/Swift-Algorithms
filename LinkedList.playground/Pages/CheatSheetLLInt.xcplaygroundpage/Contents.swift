//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
public class Node {
  var value: Int
  var next: Node? = nil
  init(_ value: Int) {
    self.value = value
  }
}


public class LinkedList {
  private var head: Node?
  
  public init() {}
  
  //Terminates 1 node before the end of LL, hence let is next
  public func append(_ node: Node) {
    if let headNode = head {
      var trav = headNode
      while let next = trav.next {
        trav = next
      }
      trav.next = node
    } else {
      head = node
    }
  }
  
  //Terminates just at the end of LL hence let name is current
  public func printLL() {
    var trav = head
    while let current = trav {
      print(current.value)
      trav = current.next
    }
  }
}

let linkedList = LinkedList()
linkedList.append(Node(1))
linkedList.append(Node(2))
linkedList.append(Node(3))
linkedList.printLL()
