class Program {
  
  // Generic Node class
  class Node<T> {
    var value: T
    var next: Node?
    
    init(value: T) {
      self.value = value
      self.next = nil
    }
  }
  
  // Generic SinglyLinkedList class
  class SinglyLinkedList<T> {
    var head: Node<T>?
    
    init() {
      head = nil
    }
    
    // Add a new node to the end of the list
    func append(value: T) {
      let newNode = Node(value: value)
      if let head = head {
        var trav = head
        while let next = trav.next {
          trav = next
        }
        trav.next = newNode
      } else {
        head = newNode
      }
    }
    
    // Print all the nodes' values in the list
    func printList() {
      var trav = head
      while let current = trav {
        print("************")
        print(current.value)
        trav = current.next
      }
    }
    
    // Remove a node with a given value
    func remove(value: T) where T: Equatable {
      if head == nil { return }
      
      if head?.value == value {
        head = head?.next
        return
      }
      
      var trav = head
      while trav?.next != nil {
        if trav?.next?.value == value {
          trav?.next = trav?.next?.next
          return
        }
        trav = trav?.next
      }
    }
    
    // Check if the list contains a node with a given value
    func contains(value: T) -> Bool where T: Equatable {
      var trav = head
      while trav != nil {
        if trav?.value == value {
          return true
        }
        trav = trav?.next
      }
      return false
    }
    
    
    
    // Insert a node at a specific position
    func insertAt(position: Int, value: T) {
      let newNode = Node(value: value)
      
      if position == 0 {
        newNode.next = head
        head = newNode
        return
      }
      
      var trav = head
      var currentPos = 0
      while trav != nil && currentPos < position - 1 {
        trav = trav?.next
        currentPos += 1
      }
      
      if trav == nil {
        print("Position out of bounds")
        return
      }
      
      newNode.next = trav?.next
      trav?.next = newNode
    }
  }
}

// Example Usage with Int and String types

// Integer Linked List
let intList = Program.SinglyLinkedList<Int>()
intList.append(value: 1)
intList.append(value: 2)
intList.append(value: 3)
intList.append(value: 4)
intList.printList() // Output: 1
//intList.remove(value: 3)
//intList.printList() // Output: 1 -> 2 -> 4 -> nil
//print(intList.contains(value: 2)) // Output: true
//print(intList.contains(value: 3)) // Output: false
//intList.insertAt(position: 2, value: 5)
//intList.printList() // Output: 1 -> 2 -> 5 -> 4 -> nil


