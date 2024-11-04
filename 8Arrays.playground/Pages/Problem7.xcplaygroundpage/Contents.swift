//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
    // Write your code here.
    array.sort()
    var answer = [[Int]]()
    for i in 0..<array.count - 2 {
        var l = i + 1
        var r = array.count - 1
        while l < r {
            let sum = array[i] + array[l] + array[r]
            if sum == targetSum {
                answer.append([array[i], array[l], array[r]])
                l += 1
                r -= 1
            } else if sum < targetSum {
                l += 1
            } else {
                r -= 1
            }
        }
    }
    return answer
}

//: [Next](@next)
