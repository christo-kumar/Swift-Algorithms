//: [Previous](@previous)

import Foundation

var greeting = "Graph With Edge List"

struct Edge {
  let from: Int
  let to : Int
}

class Graph {
  var edges: [Edge] = []
  
  func addEdge(from: Int, to: Int) {
    edges.append(Edge(from: from, to: to))
  }
  
  func adjacencyList() -> [Int: [Int]] {
    var adjacencyList: [Int: [Int]] = [:]
    for edge in edges {
      adjacencyList[edge.from, default: []].append(edge.to)
    }
    return adjacencyList
  }
  
  func depthFirstSearch(start: Int) -> [Int] {
    let adjList = adjacencyList()
    var visited = Set<Int>()
    var stack = Array<Int>()
    visited.insert(start)
    stack.append(start)
    var result: [Int] = []
    while !stack.isEmpty {
      let current = stack.removeLast()
      result.append(current)
      for neighbor in adjList[current] ?? [] where !visited.contains(neighbor) {
        visited.insert(neighbor)
        stack.append(neighbor)
      }
    }
    return result
  }
  
  func breadthFirstSearch(start: Int) -> [Int] {
    let adjList = adjacencyList()
    var visited = Set<Int>()
    var queue = Array<Int>()
    visited.insert(start)
    queue.append(start)
    var result: [Int] = []
    while !queue.isEmpty {
      let current = queue.removeFirst()
      result.append(current)
      for neighbor in adjList[current] ?? [] where !visited.contains(neighbor) {
        visited.insert(neighbor)
        queue.append(neighbor)
      }
    }
    return result
  }
}

let graph = Graph()
graph.addEdge(from: 0, to: 1)
graph.addEdge(from: 0, to: 4)
graph.addEdge(from: 1, to: 2)
graph.addEdge(from: 3, to: 1)
graph.addEdge(from: 3, to: 2)
graph.addEdge(from: 4, to: 3)
let bfs = graph.breadthFirstSearch(start: 0)
print(bfs)
let dfs = graph.depthFirstSearch(start: 0)
print(dfs)

//: [Next](@next)
