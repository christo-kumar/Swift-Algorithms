import UIKit

var greeting = "Hello, playground"

func isPalindrome(string: String) -> Bool {
    // Write your code here.
    var start = string.startIndex
    var end = string.index(before: string.endIndex)
    while start < end {
        if string[start] != string[end] { return false }
        start = string.index(after: start)
        end = string.index(before: end)
    }
    return true
}

func isPalindromeV2(string: String) -> Bool {
    // Write your code here.
    var charArray = Array(string)
    let lastTerm = charArray.count - 1
    let midTerm = charArray.count / 2
    for i in 0..<midTerm {
        if charArray[i] != charArray[lastTerm - i] { return false }
    }
    return true
}
