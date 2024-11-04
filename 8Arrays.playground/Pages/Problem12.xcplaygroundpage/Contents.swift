//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func longestPeak(array: [Int]) -> Int {
    // Write your code here.
    var longestPeakLenght = 0
    var i = 1
    while i < array.count - 1 {
        let isPeak = array[i-1] < array[i] && array[i] > array[i+1]
        if !isPeak {
            i += 1
            continue
        }
        
        var leftIdx = i - 1
        while leftIdx > 0 && array[leftIdx-1] < array[leftIdx] {
            leftIdx -= 1
        }
        
        var rightIdx = i + 1
        while rightIdx < array.count - 1 && array[rightIdx] > array[rightIdx+1] {
            rightIdx += 1
        }
        
        let currentPeak = rightIdx - leftIdx + 1
        longestPeakLenght = max(longestPeakLenght, currentPeak)
        i = rightIdx + 1
        
    }
    return longestPeakLenght
}

//: [Next](@next)
