//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func runLengthEncoding(_ string: String) -> String {
  // Write your code here.
  let array = Array(string)
  var encoded = [Character]()
  var i = 0
  while i < array.count {
    var j = i
    repeat {
      j += 1
    } while j < array.count && array[j] == array[i]
    encoded.append(contentsOf: encode(character:array[i],count: j - i))
    i = j
  }
  return String(encoded)
}

private func encode(character: Character, count: Int) -> String {
  if count < 10 { return "\(count)\(character)"}
  return String(repeating:"\(9)\(character)", count: count/9) + (count % 9 == 0 ? "" : "\(count%9)\(character)")
}

func runLengthEncodingV2(_ string: String) -> String {
    // Write your code here.
    var encodedString = ""
    var count = 0
    var prevChar: Character?
    
    for char in string {
        if let prev = prevChar, prev == char {
            count += 1
        } else {
            if let prev = prevChar {
                encodedString.append("\(count)\(prev)")
            }
            prevChar = char
            count = 1
        }
        if count == 9 {
            encodedString.append("9\(char)")
            count = 0
            prevChar = nil
        }
    }
    
    if let prev = prevChar {
        encodedString.append("\(count)\(prev)")
    }
    
    return encodedString
}

//: [Next](@next)
