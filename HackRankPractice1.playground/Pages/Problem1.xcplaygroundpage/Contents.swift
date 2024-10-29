//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func plusMinus(arr: [Int]) -> Void { 
    let totalItems = Double(arr.count)
    var negativeCount:Double = 0
    var zeroCount: Double = 0
    var positiveCount: Double = 0
    arr.forEach{ item in
    if item < 0 {
        negativeCount = negativeCount + 1
    } else if item == 0 {
        zeroCount = zeroCount + 1
    } else {
        positiveCount = positiveCount + 1
    }
}

print(String(format: "%.6f", positiveCount/totalItems))
print(String(format: "%.6f", negativeCount/totalItems))
print(String(format: "%.6f", zeroCount/totalItems))
}
