//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class GraphWithAdjecentList {
  var adjacencyList: [Int: [Int]] = [:]
  
  func addEdge(from: Int, to: Int) {
    adjacencyList[from, default: []].append(to)
  }
  
  func printGraph() {
    print(adjacencyList)
  }
  
  func depthFirstSearch(startingFrom: Int) -> [Int] {
    var visited = Set<Int>()
    var stack = Array<Int>()
    visited.insert(startingFrom)
    stack.append(startingFrom)
    var result : [Int] = []
    while !stack.isEmpty {
      let current = stack.removeLast()
      result.append(current)
      if let neighbors = adjacencyList[current] {
        for neighbor in neighbors {
          if !visited.contains(neighbor) {
            visited.insert(neighbor)
            stack.append(neighbor)
          }
        }
      }
    }
    return result
  }
  
  func breadthFirstSearch(startingFrom: Int) -> [Int] {
    var visited = Set<Int>()
    var queue = Array<Int>()
    visited.insert(startingFrom)
    queue.append(startingFrom)
    var result : [Int] = []
    while !queue.isEmpty {
      let current = queue.removeFirst()
      result.append(current)
      if let neighbors = adjacencyList[current] {
        for neighbor in neighbors {
          if !visited.contains(neighbor) {
            visited.insert(neighbor)
            queue.append(neighbor)
          }
        }
      }
    }
    return result
  }
}

let graph = GraphWithAdjecentList()
graph.addEdge(from: 0, to: 1)
graph.addEdge(from: 0, to: 4)
graph.addEdge(from: 1, to: 2)
graph.addEdge(from: 3, to: 1)
graph.addEdge(from: 3, to: 2)
graph.addEdge(from: 4, to: 3)
graph.printGraph()

let bfs = graph.breadthFirstSearch(startingFrom: 0)
print(bfs)
let dfs = graph.depthFirstSearch(startingFrom: 0)
print(dfs)




//: [Next](@next)
