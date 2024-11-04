//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func groupAnagrams(_ words: [String]) -> [[String]] {
    // Write your code here.
    var dict = [String:[String]]()
    for word in words {
        let sorted = String(word.sorted())
        dict[sorted, default: []].append(word)
    }
    return dict.values.map { $0 }
}


//: [Next](@next)
