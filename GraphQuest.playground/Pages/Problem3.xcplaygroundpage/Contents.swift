//: [Previous](@previous)

import Foundation

var greeting = "Has Single Cycle"

class Program {
  func hasSingleCycle(array: [Int]) -> Bool {
    // Write your code here.
    var currentIndex = 0
    for i in 1...array.count {
      if i > 1 && currentIndex == 0 { return false }
      currentIndex = (currentIndex + array[currentIndex]) % array.count
      if currentIndex < 0 { currentIndex = array.count + currentIndex }
    }
    return currentIndex == 0
  }
}
//: [Next](@next)
