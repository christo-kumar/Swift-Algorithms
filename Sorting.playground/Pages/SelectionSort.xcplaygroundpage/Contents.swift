import UIKit

var greeting = "Selection Sort"

func selectionSort(array: inout[Int]) -> [Int] {
  let lastIndex = array.count - 1
  for i in 0..<lastIndex {
    for j in i+1...lastIndex {
      if array[j] < array[i] {
        array.swapAt(i, j)
      }
    }
  }
  return array
}

var array: [Int] = [5, 7, 6, 3, 4, 1]
selectionSort(array: &array)
print(array)
