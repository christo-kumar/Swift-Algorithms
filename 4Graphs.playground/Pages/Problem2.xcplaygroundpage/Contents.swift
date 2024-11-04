import UIKit

var greeting = "Breadth first - QUEUE"

class Program {
  class Node {
    var name: String
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

    func breadthFirstSearch(array: inout [String]) -> [String] {
      // Write your code here.
      //queue has the root node
      var queue = [self]
      while let node = queue.first {
        array.append(node.name)
        queue.append(contentsOf: node.children)
        queue.removeFirst()
      }
      return array
    }
  }
}


