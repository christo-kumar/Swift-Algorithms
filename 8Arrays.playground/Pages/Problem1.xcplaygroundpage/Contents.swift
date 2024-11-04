//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    var complimentryDict = [Int:Int]()
    for (index, currentValue) in array.enumerated(){
      let compliment = targetSum - currentValue
      if let compIndex = complimentryDict[compliment] {
        return [compliment,currentValue]
      } else {
        complimentryDict[currentValue] = index
      }
    }
    return []
  }
var array = [3,5,-4,8,11,1,-1,6]
let output = twoNumberSum(&array, 10)
print(output)
