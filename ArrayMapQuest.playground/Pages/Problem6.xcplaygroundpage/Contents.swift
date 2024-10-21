//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func transposeMatrix(_ matrix: [[Int]]) -> [[Int]] {
    // Write your code here.
    //outer map gives the index of col
    //inner map $0 gives entire row [1,2,3] and we select the specific col
    matrix[0].enumerated().map { rowIndex, _ in matrix.map { $0[rowIndex]} }
}

//: [Next](@next)
