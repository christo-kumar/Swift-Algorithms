//: [Previous](@previous)

import Foundation

var greeting = "Depth First"

class Program {
  class Node {
    let name: String
    var children: [Node]

    init(name: String) {
      self.name = name
      children = []
    }

    func addChild(name: String) -> Node {
      let childNode = Node(name: name)
      children.append(childNode)

      return self
    }

    func traverse(node: Node, array: inout [String]){
      array.append(node.name)
      for eachNode in node.children {
        traverse(node: eachNode, array: &array)
      }
    }

    func depthFirstSearch(array: inout [String]) -> [String] {
      // Write your code here.
      traverse(node: self, array: &array)
      return array
    }
  }
}




//: [Next](@next)
