//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class TreeNode<T: Comparable> {
    var value: T
    var left: TreeNode?
    var right: TreeNode?
    
    init(value: T) {
        self.value = value
    }
    
}

class BinarySearchTree<T: Comparable> {
    private(set) var root: TreeNode<T>?
    
    func insert(value: T) {
        root = insert(from: root, value: value)
    }
    
    func search(value: T) -> TreeNode<T>? {
        return search(from: root, value: value)
    }
    
    func delete(value: T) {
        root = delete(from: root, value: value)
    }
    
    private func insert(from node: TreeNode<T>?, value: T) -> TreeNode<T> {
        guard let node = node else {
            return TreeNode(value: value)
        }
        
        if value < node.value {
            node.left = insert(from: node.left, value: value)
        } else if value > node.value {
            node.right = insert(from: node.right, value: value)
        }
        return node
    }
    
    func inOrderTraversal(node: TreeNode<T>?) {
        guard let node = node else { return }
        inOrderTraversal(node: node.left)
        print(node.value, terminator: " ")
        inOrderTraversal(node: node.right)
    }
    
    func preOrderTraversal(node: TreeNode<T>?) {
        guard let node = node else { return }
        print(node.value, terminator: " ")
        preOrderTraversal(node: node.left)
        preOrderTraversal(node: node.right)
    }
    
    func postOrderTraversal(node: TreeNode<T>?) {
        guard let node = node else { return }
        postOrderTraversal(node: node.left)
        postOrderTraversal(node: node.right)
        print(node.value, terminator: " ")
    }
    
    private func search(from node: TreeNode<T>?, value: T) -> TreeNode<T>? {
        guard let node = node else { return nil }
        
        if value == node.value {
            return node
        } else if value < node.value {
            return search(from: node.left, value: value)
        } else {
            return search(from: node.right, value: value)
        }
    }
    
    private func delete(from node: TreeNode<T>?, value: T) -> TreeNode<T>? {
        guard let node = node else { return nil }
        
        if value < node.value {
            node.left = delete(from: node.left, value: value)
        } else if value > node.value {
            node.right = delete(from: node.right, value: value)
        } else {
            // Node to delete found
            if node.left == nil && node.right == nil {
                return nil
            } else if node.left == nil {
                return node.right
            } else if node.right == nil {
                return node.left
            } else {
                if let minValue = minValue(from: node.right) {
                    node.value = minValue
                    node.right = delete(from: node.right, value: minValue)
                }
            }
        }
        return node
    }
    
    private func minValue(from node: TreeNode<T>?) -> T? {
        var currentNode = node
        while let next = currentNode?.left {
            currentNode = next
        }
        return currentNode?.value
    }
}

//: [Next](@next)
