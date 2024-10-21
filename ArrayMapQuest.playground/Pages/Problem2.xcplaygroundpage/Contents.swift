//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
    // Write your code here.
    var seqIndex = 0
    for (index,value) in array.enumerated() {
      if seqIndex == sequence.count {
        break
      }
      if value == sequence[seqIndex]  {
        seqIndex += 1
      }
    }
    return seqIndex == sequence.count
  }

print(isValidSubsequence([5,1,22,25,6,-1,8,10], [1,6,-1,10]))



//: [Next](@next)
