//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
// Write your code here.
//We assume item at 0th index is sorted.
//for [5, 7, 1, 6, 9] -> [5] is Sorted [7,1, 6, 9] is unsorted arrays
//We Began with i=1 to 1..<array.count, defines the scope of unsorted array
//Inner loop iterates to put elements from unsorted to sorted array

//: [Next](@next)
func insertionSort(array: inout[Int]) -> [Int] {
  for i in 1..<array.count {
    var j = i
    while j > 0 && array[j] < array[j-1] {
      array.swapAt(j, j-1)
      j -= 1
    }
  }
  return array
}

var array: [Int] = [1, 7, 6, 3, 4, 5]
print(insertionSort(array: &array))
