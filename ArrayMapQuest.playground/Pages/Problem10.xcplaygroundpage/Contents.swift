//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func isMonotonic(array: [Int]) -> Bool {
    // Write your code here.
    guard array.count > 1 else { return true }
    var increasing = true, decreasing = true
    for i in 1..<array.count {
        if array[i-1]>array[i] { increasing = false }
        if array[i]>array[i-1] { decreasing = false }
    }
    return increasing || decreasing
}

//: [Next](@next)
