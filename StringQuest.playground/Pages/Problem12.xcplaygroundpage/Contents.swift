//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func minimumCharactersForWords(_ words: [String]) -> [String] {
    // Write your code here.
    var charactersNeeded = [Character: Int]()
    words.forEach { word in
        let wordCharacterCount = word.reduce(into:[:]) {
            $0[$1, default:0] += 1
        }
        wordCharacterCount.forEach { character, count in
            charactersNeeded[character] = max(charactersNeeded[character] ?? 1, count)
        }
    }
    return charactersNeeded.flatMap { Array(repeating: String($0.key), count: $0.value)}
}

//: [Next](@next)
