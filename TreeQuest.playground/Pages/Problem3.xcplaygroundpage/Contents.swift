//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Program {
    // This is an input class. Do not edit.
    class BST {
        var value: Int?
        var left: BST?
        var right: BST?
        
        init(value: Int) {
            self.value = value
            left = nil
            right = nil
        }
    }
    
    func validateBst(tree: BST) -> Bool {
        // Write your code here.
        validate(tree, min: Int(Int32.min), max: Int(Int32.max))
    }
    
    private func validate(_ tree: BST?, min: Int, max: Int) -> Bool {
        guard let tree = tree, let value = tree.value else { return true }
        return min..<max ~= value && validate(tree.left, min: min, max: value) && validate(tree.right, min: value, max: max)
    }
}


//: [Next](@next)
