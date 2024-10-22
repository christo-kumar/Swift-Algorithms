//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Program {
  class BST {
    var value: Int
    var left: BST?
    var right: BST?

    init(value: Int) {
      self.value = value
      left = nil
      right = nil
    }

    func insert(value: Int) -> BST {
      // Write your code here.
      var pointer = self
      while let p = (value < pointer.value) ? pointer.left : pointer.right {
        pointer = p
      }
      if value < pointer.value {
        pointer.left = BST(value: value)
      } else {
        pointer.right = BST(value:value)
      }
      return self
    }

    func contains(value: Int) -> Bool {
      // Write your code here.
      var pointer: BST? = self
      while let p = pointer {
        if p.value == value { return true }
        pointer = value < p.value ? p.left : p.right
      }
      return false
    }

    func remove(value: Int?, parentNode: BST?) -> BST {
      // Write your code here.
      guard let value = value else { return BST(value: 0)}
      var nodeToRemove = self
      var parent: BST? = parentNode
      while nodeToRemove.value != value, let child = value < nodeToRemove.value ? nodeToRemove.left : nodeToRemove.right {
        parent = nodeToRemove
        nodeToRemove = child
      }

      guard nodeToRemove.value == value else { return self }

      if nodeToRemove.left == nil && nodeToRemove.right == nil {
        if let parent = parent {
          if value < parent.value {
            parent.left = nil
          } else {
            parent.right = nil
          }
        }
      } else if nodeToRemove.left == nil || nodeToRemove.right == nil {
        if let parent = parent {
          if value < parent.value {
            parent.left = nodeToRemove.left ?? nodeToRemove.right!
          } else {
            parent.right = nodeToRemove.left ?? nodeToRemove.right!
          }
        } else {
          let child = nodeToRemove.left ?? nodeToRemove.right!
          nodeToRemove.value = child.value
          nodeToRemove.left = child.left
          nodeToRemove.right = child.right
        }
      } else {
        var smallest = nodeToRemove.right!
        var smallestParent = nodeToRemove
        while let leftChild = smallest.left {
          smallestParent = smallest
          smallest = leftChild
        }
        if value < smallestParent.value {
          smallestParent.left = nil
        } else {
          smallestParent.right = nil
        }
        nodeToRemove.value = smallest.value
      }
      return nodeToRemove
    }
  }
}


//: [Next](@next)
