import UIKit

var greeting = "Hello, playground"

//Graph implimeted as adjcency list
class Graph {
    var adjList: [String: [String]] = [:] // Dictionary to hold adjacency list
    
    func addEdge(from: String, to: String) {
        adjList[from, default: []].append(to)
    }
    
    func addUndirectedEdge(node1: String, node2: String) {
        addEdge(from: node1, to: node2)
        addEdge(from: node2, to: node1)
    }
    
    func dfs(graph: Graph, node: String, visited: inout Set<String>) {
        visited.insert(node)
        print(node, terminator: " ")
        
        for neighbor in graph.adjList[node] ?? [] {
            if !visited.contains(neighbor) {
                dfs(graph: graph, node: neighbor, visited: &visited)
            }
        }
    }
    
    func bfs(graph: Graph, startNode: String) {
        var visited = Set<String>()
        var queue = [startNode]
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            if visited.contains(node) { continue }
            
            visited.insert(node)
            print(node, terminator: " ")
            
            for neighbor in graph.adjList[node] ?? [] {
                if !visited.contains(neighbor) {
                    queue.append(neighbor)
                }
            }
        }
    }
}

//Graph implimented as adjcency matrix
class GraphMatrix {
    var matrix: [[Int]]
    
    init(size: Int) {
        matrix = Array(repeating: Array(repeating: 0, count: size), count: size)
    }
    
    func addEdge(from: Int, to: Int) {
        matrix[from][to] = 1
    }
    
    func addUndirectedEdge(from: Int, to: Int) {
        matrix[from][to] = 1
        matrix[to][from] = 1
    }
}
