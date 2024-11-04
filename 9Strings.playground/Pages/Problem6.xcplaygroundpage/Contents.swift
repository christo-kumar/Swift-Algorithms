//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func firstNonRepeatingCharacter(_ string: String) -> Int {
    // Write your code here.
    let charCountMap = string.reduce(into:[:]) { $0[$1, default:0] += 1 }
    for (i, c) in string.enumerated() {
        if charCountMap[c] == 1 {
            return i
        }
    }
    return -1
}

func firstNonRepeatingCharacterV2(_ string: String) -> Int {
    // Write your code here.
    // Create a table
    // Iterate the the array return when count is 1
    // Turns out to be the final
    var charDict: [Character: Int] = [:]
    for char in string {
        charDict[char, default: 0] += 1
    }
    for (index, val) in string.enumerated() {
        if let count = charDict[val], count == 1 {
            return index
        }
    }
    return -1
}

//: [Next](@next)
