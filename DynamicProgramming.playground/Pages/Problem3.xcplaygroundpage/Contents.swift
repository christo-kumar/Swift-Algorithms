//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
class Program {
  func minimumNumberOfCoinsForChange(target: Int, denominations: [Int]) -> Int {
    // Write your code here.
    var minNumberOfCoinsArray = [Int](repeating: Int(Int16.max), count: target + 1)
    minNumberOfCoinsArray[0] = 0

    for coin in denominations {
      for amount in stride(from:1, through: target, by:1) {
        if coin <= amount {
          minNumberOfCoinsArray[amount] = min(minNumberOfCoinsArray[amount], minNumberOfCoinsArray[amount - coin] + 1)
        }
      }
    }
    return minNumberOfCoinsArray[target] != Int(Int16.max) ? minNumberOfCoinsArray[target] : -1
  }
}
