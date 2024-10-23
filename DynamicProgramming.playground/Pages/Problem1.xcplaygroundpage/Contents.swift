//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Program {
  func maximumSubsetSum(array: [Int]) -> Int {
    // Write your code here.
    var firstMaxSum = 0
    var secondMaxSum = 0
    for currentValue in array {
      let currentMaxSum = max(secondMaxSum, firstMaxSum + currentValue)
      firstMaxSum = secondMaxSum
      secondMaxSum = currentMaxSum
    }
    return secondMaxSum
  }
}

//: [Next](@next)
