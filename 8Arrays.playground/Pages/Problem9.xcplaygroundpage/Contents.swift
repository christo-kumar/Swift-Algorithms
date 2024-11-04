//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
    // Write your code here.
    var lastNonTarget = 0
    for i in 0..<array.count {
        if array[i] != toMove {
            array.swapAt(i, lastNonTarget)
            lastNonTarget += 1
        }
    }
    return array
}

//: [Next](@next)
