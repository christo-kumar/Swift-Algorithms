//: [Previous](@previous)

import Foundation

var greeting = "finding middle node"

class Program {
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


//: [Next](@next)
