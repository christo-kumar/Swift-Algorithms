//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func commonCharacters(_ strings: [String]) -> [String] {
    // Write your code here.
    //Creates the unique character set for first string in string array
    var uniqueCharacters = Set(strings[0])
    strings.dropFirst().forEach { string in
        uniqueCharacters.formIntersection(Set(string))
    }
    
    return uniqueCharacters.map {String($0)}
}

func commonCharactersV2(_ strings: [String]) -> [String] {
    // Write your code here.
    var characterTable: [Character: Int] = [:]
    
    // Iterate through the strings in the input array
    for string in strings {
        // Convert each string to a character set to handle multiplicity
        let charSet = Set(string)
        
        // Iterate through the character set and update the character table
        for char in charSet {
            characterTable[char, default: 0] += 1
        }
    }
    
    // Filter characters with count equal to the number of strings
    let commonChars = characterTable.filter { $0.value == strings.count }.map { String($0.key) }
    
    return commonChars
}

//: [Next](@next)
