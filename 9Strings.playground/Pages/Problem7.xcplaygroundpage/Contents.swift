//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func semordnilap(_ words: [String]) -> [[String]] {
    // Write your code here.
    var setOfWords = Set(words)
    var results = [[String]]()
    for word in words {
        setOfWords.remove(word)
        if setOfWords.contains(String(word.reversed())) {
            results.append([word, String(word.reversed())])
        }
    }
    return results
}

//: [Next](@next)
