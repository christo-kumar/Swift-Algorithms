//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func spiralTraverse(array: [[Int]]) -> [Int] {
    // Write your code here.
    var result = [Int]()
    if array.isEmpty { return result }
    var startRow = 0
    var endRow = array.count - 1
    var startCol = 0
    var endCol = array[0].count - 1
    
    while startRow <= endRow && startCol <= endCol {
        //At Top: left to right
        for col in stride(from: startCol, through: endCol, by: 1) {
            result.append(array[startRow][col])
        }
        startRow += 1
        
        //At Right: top to bottom
        for row in stride(from: startRow, through: endRow, by: 1){
            result.append(array[row][endCol])
        }
        endCol -= 1
        
        //At Bottom: right to left
        if startRow <= endRow {
            for col in stride(from: endCol, through: startCol, by: -1){
                result.append(array[endRow][col])
            }
            endRow -= 1
        }
        
        //At Left: bottom to top
        if startCol <= endCol {
            for row in stride(from: endRow, through: startRow, by: -1){
                result.append(array[row][startCol])
            }
            startCol += 1
        }
    }
    
    return result
}

//: [Next](@next)
