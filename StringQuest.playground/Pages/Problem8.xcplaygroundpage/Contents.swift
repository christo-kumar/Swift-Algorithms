//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func longestPalindromicSubstring(string: String) -> String {
    // Write your code here.
    guard string.count > 1 else { return  string }
    let characterArray = Array(string)
    var longestParlindrom = ""
    
    func expandAroundCenter(_ leftIndex: Int, _ rightIndex: Int) {
        var leftI = leftIndex
        var rightI = rightIndex
        while leftI >= 0 && rightI < characterArray.count && characterArray[leftI] == characterArray[rightI] {
            if (leftI...rightI).count > longestParlindrom.count {
                longestParlindrom = String(characterArray[leftI...rightI])
            }
            leftI -= 1
            rightI += 1
        }
    }
    
    for i in 0..<characterArray.count {
        //for odd palindrom
        expandAroundCenter(i,i)
        //for even palindrom
        expandAroundCenter(i,i+1)
    }
    return longestParlindrom
}

//: [Next](@next)
