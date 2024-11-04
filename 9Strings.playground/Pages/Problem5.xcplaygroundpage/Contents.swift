//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func generateDocument(_ characters: String, _ document: String) -> Bool {
    // Write your code here.
    if document.count > characters.count { return false }
    var charsMap = characters.reduce(into: [:]) { $0 [$1,default:0] += 1}
    for c in document {
        guard let count = charsMap[c], count > 0 else { return false }
        charsMap[c] = count - 1
    }
    return true
}

func generateDocumentV2(_ characters: String, _ document: String) -> Bool {
  // Write your code here.
  // charcter table
  // document table
  // compare the count
  // It turned out to be most efficient :) yeah
  var charDict: [Character: Int] = [:]
  for char in characters {
      charDict[char, default: 0] += 1
  }
  
  //Compare counts in doc and character
  var docDict: [Character: Int] = [:]
  for doc in document {
      docDict[doc, default: 0] += 1
  }

  for key in docDict.keys {
      if let docCount = docDict[key], let charCount = charDict[key] {
          if docCount > charCount { // Only return false if document needs more of this character than available
              return false
          }
      } else {
          return false // Character needed for the document is not available at all
      }
  }
  
  return true
}

//: [Next](@next)
