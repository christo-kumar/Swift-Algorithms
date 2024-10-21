//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func reverseWordsInString(_ string: String) -> String {
    // Write your code here.
    let characters = Array(string)
    var phraseComponents = [ArraySlice<Character>]()
    //Start from back
    var i = characters.count - 1
    while i >= 0 {
        var j = i - 1
        //group the words on the basis of isWhitespace returns true or false
        //groups whitespace and non whitespace characters
        while j >= 0, characters[j].isWhitespace == characters[i].isWhitespace {
            j -= 1
        }
        phraseComponents.append(characters[j+1...i])
        i = j
    }
    //pharseCompnents[AS(H),AS(' '),AS(W)]
    //map-> [[H],[ ],[W]]
    //flatmap-> [H, ' ', W]
    return String(phraseComponents.flatMap { $0 })
}

//: [Next](@next)
