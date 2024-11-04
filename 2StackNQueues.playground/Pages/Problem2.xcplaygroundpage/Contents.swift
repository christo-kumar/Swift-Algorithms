//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Program {
    func balancedBrackets(string: String) -> Bool {
        // Write your code here.
        //We will push only the opening brackets to the stack
        //and only validate the sequence of closing brackets
        let openingBrackets: Set<Character> = ["(","[","{"]
        let matchingBrackets: [Character: Character] = [")":"(","]":"[","}":"{"]
        var stack = [Character]()
        for c in string {
            if openingBrackets.contains(c) {
                stack.append(c)
            } else if let openingBracket = matchingBrackets[c] {
                guard stack.popLast() == openingBracket else { return false }
            }
        }
        return stack.isEmpty
    }
}

//: [Next](@next)
