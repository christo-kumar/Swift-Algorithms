import UIKit

var greeting = "Remove Duplicates from linked list"

class Program {
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
            while trav?.value == trav?.next?.value {
                trav?.next = trav?.next?.next
            }
            trav = trav?.next
        }
        return linkedList
    }
}
