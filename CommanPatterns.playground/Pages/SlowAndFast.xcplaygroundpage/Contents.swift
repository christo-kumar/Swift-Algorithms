//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
class Program1 {
  // This is an input class. Do not edit.
  class LinkedList {
    var value: Int
    var next: LinkedList?
    
    init(value: Int) {
      self.value = value
    }
  }
  
  func removeDuplicatesFromLinkedList(_ linkedList: LinkedList) -> LinkedList {
    // Write your code here.
    var trav: LinkedList? = linkedList
    while trav != nil {
      if trav?.value == trav?.next?.value {
        trav?.next = trav?.next?.next
      }
      trav = trav?.next
    }
    return linkedList
  }
  /*var trav: LinkedList? = linkedList
   while trav != nil {
   while trav?.value == trav?.next?.value {
   trav?.next = trav?.next?.next
   }
   trav = trav?.next
   }
   return linkedList
   }*/
}

class Program2 {
  // This is an input class. Do not edit.
  class LinkedList: Hashable {
    var value: Int
    var next: LinkedList?
    
    init(value: Int) {
      self.value = value
    }
    
    func hash(into hasher: inout Hasher) {
      hasher.combine(ObjectIdentifier(self).hashValue)
    }
    
    static func == (left: LinkedList, right: LinkedList) -> Bool {
      return left === right
    }
  }
  
  func middleNode(_ linkedList: LinkedList) -> LinkedList? {
    // Write your code here.
    var slow: LinkedList? = linkedList
    var fast: LinkedList? = linkedList
    while fast?.next != nil {
      slow = slow?.next
      fast = fast?.next?.next
    }
    return slow
  }
}

class Program3 {
  // This is an input class. Do not edit.
  class LinkedList {
    var value: Int
    var next: LinkedList?
    
    init(value: Int) {
      self.value = value
      next = nil
    }
  }
  
  func findLoop(head: LinkedList) -> LinkedList? {
      // Write your code here.
      var fast: LinkedList? = head
      var slow: LinkedList? = head
      while fast != nil {
        fast = fast?.next?.next
        slow = slow?.next
        if fast === slow {
          slow = head
          while slow !== fast{
            fast = fast?.next
            slow = slow?.next
          }
          return slow
        }
      }
      return nil
    }
}

