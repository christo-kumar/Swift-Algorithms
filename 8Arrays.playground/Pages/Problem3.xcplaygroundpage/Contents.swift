//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func sortedSquaredArray(_ array: [Int]) -> [Int] {
    // Write your code here.
    array.sorted { num1, num2 in num1 * num1 < num2 * num2}.map { $0 * $0 }
}

print(sortedSquaredArray([1,2,3,5,6,8,9]))

//: [Next](@next)
