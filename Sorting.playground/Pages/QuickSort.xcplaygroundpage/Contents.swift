//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func quickSort(_ array: inout[Int]) {
  quickSort(&array, 0, array.count - 1)
}

func quickSort(_ array: inout[Int], _ low: Int, _ high: Int) {
  if low < high {
    let pivot = partition(&array, low, high)
    quickSort(&array, low, pivot - 1)
    quickSort(&array, pivot + 1, high)
  }
}

 func partition(_ array: inout [Int],_ low: Int,_ high: Int) -> Int {
    let pivot = array[high]  // Choose the last element as the pivot
    var left = low
    var right = high - 1
    
    while left <= right {
        // Move left pointer to the right past elements less than or equal to the pivot
        while left <= right && array[left] <= pivot {
            left += 1
        }
        
        // Move right pointer to the left past elements greater than or equal to the pivot
        while left <= right && array[right] >= pivot {
            right -= 1
        }
        
        // Swap elements at left and right if they're on the wrong sides
        if left < right {
            array.swapAt(left, right)
        }
    }
    
    // Place the pivot in its correct position
    array.swapAt(left, high)
    return left
}



var array = [12, 11, 13, 5, 6, 7]
quickSort(&array)
print("Sorted array: \(array)")

//: [Next](@next)
