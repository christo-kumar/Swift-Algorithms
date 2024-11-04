//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Program {
    func sunsetViews(_ buildings: [Int], _ direction: String) -> [Int] {
        // Write your code here.
        var answer = Array<Int>()
        var tallest = 0
        let iterator = direction == "WEST" ? stride(from: 0, to: buildings.count, by:1) : stride(from: buildings.count - 1, to: -1, by: -1)
        for i in iterator where buildings[i] > tallest {
            answer.append(i)
            tallest = buildings[i]
        }
        return direction == "WEST" ? answer : answer.reversed()
    }
}

//: [Next](@next)
