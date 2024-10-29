//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func mergeOverlappingIntervals(_ intervals: [[Int]]) -> [[Int]] {
    // Write your code here.
    let sorted = intervals.sorted() { $0[0] < $1[0]}
    var answer = [sorted[0]]
    for i in 1..<sorted.count {
      if answer[answer.count - 1][1] >= sorted[i][0] {
        answer[answer.count -1][1] = max(answer[answer.count - 1][1], sorted[i][1])
      } else {
        answer.append(sorted[i])
      }
    }
    return answer
  }
