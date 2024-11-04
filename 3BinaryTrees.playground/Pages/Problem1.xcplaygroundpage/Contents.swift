import UIKit

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
    }
    
    func findClosestValueInBST(tree: BST?, target: Int) -> Int {
        // Write your code here
        var closest = tree?.value ?? -1
        findClosest(tree: tree, target: target, closest: &closest)
        return closest
    }
    
    private func findClosest(tree: BST?, target: Int, closest: inout Int) {
        guard let tree = tree else { return }
        closest = abs(tree.value - target) < abs(closest - target) ? tree.value : closest
        findClosest(tree: target < tree.value ? tree.left : tree.right, target: target, closest: &closest)
    }
}
