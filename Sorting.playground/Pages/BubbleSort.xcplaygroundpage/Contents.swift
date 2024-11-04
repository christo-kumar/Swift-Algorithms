//: [Previous](@previous)

import Foundation

var greeting = "Bubble Sort"

func bubbleSort(array: inout [Int]) -> [Int] {
  var currMaxIndex = array.count - 1
  while currMaxIndex > 1 {
    for i in 0..<currMaxIndex {
      if array[i] > array[i+1] {
        array.swapAt(i, i+1)
      }
    }
    currMaxIndex -= 1
  }
  return array
}

var array: [Int] = [1, 7, 6, 3, 4, 5]
print(bubbleSort(array: &array))

//: [Next](@next)
