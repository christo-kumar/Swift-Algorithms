//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
class Node {
  var value: Int
  var left: Node? = nil
  var right: Node? = nil
  
  init(_ value: Int) {
    self.value = value
  }
}

class BST {
  var root: Node? = nil
  
  init(){}
  
  func insert(_ value: Int) {
    root = insert(from: root, value)
  }
  
  private func insert(from node: Node?, _ value: Int) -> Node? {
    guard let node else { return Node(value) }
    if value < node.value {
      node.left = insert(from: node.left, value)
    } else if value > node.value {
      node.right = insert(from: node.right, value)
    }
    return node
  }
  
  func search(_ value: Int) -> Node? {
    search(from: root, value)
  }
  
  private func search(from node: Node?, _ value: Int) -> Node? {
    guard let node else { return nil }
    if value == node.value { return node }
    if value < node.value { return search(from: node.left, value) }
    return search(from: node.right, value)
  }
  
  func inOrderTravel(from node: Node?) -> [Int] {
    guard let node else { return [] }
    return inOrderTravel(from: node.left) + [node.value] + inOrderTravel(from: node.right)
  }
  
  func postOrderTravel(from node: Node?) -> [Int] {
    guard let node else  { return [] }
    return postOrderTravel(from: node.left) + postOrderTravel(from: node.right) + [node.value]
  }
  
  func delete(_ value: Int) {
    root = delete(from: root, value)
  }
  
  private func delete(from node: Node?, _ value: Int) -> Node? {
    guard let node else { return nil }
    if value < node.value {
      node.left = delete(from: node.left, value)
    } else if value > node.value {
      node.right = delete(from: node.right, value)
    } else {
      if node.left == nil && node.right == nil {
        return nil
      } else if node.left == nil {
        return node.right
      } else if node.right == nil {
        return node.left
      } else {
        if let minValue = minValue(from: node.right) {
          node.value = minValue
          node.right = delete(from: node.right, minValue)
        }
      }
    }
    return node
  }
  
  private func minValue(from node: Node?) -> Int? {
    var trav = node
    while let left = trav?.left {
      trav = left
    }
    return trav?.value
  }
}
