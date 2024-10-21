//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
    // Write your code here.
    arrayOne.sort()
    arrayTwo.sort()
    var answer = [Int(Int32.min), Int(Int32.max)]
    var i = 0, j = 0
    while i < arrayOne.count, j < arrayTwo.count {
        if arrayOne[i] == arrayTwo[j] {
            return [arrayOne[i], arrayTwo[j]]
        } else {
            if abs(arrayOne[i] - arrayTwo[j]) < abs(answer[0] - answer[1]) {
                answer = [arrayOne[i], arrayTwo[j]]
            }
            if arrayOne[i] < arrayTwo[j] {
                i += 1
            } else {
                j += 1
            }
        }
    }
    
    return answer
}

//: [Next](@next)
