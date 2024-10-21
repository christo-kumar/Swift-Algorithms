//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func caesarCipherEncryptor(string: String, key: UInt32) -> String {
    // Write your code here.
    let modKey = UInt8(key%26)
    var utfArray = Array(string.utf8)
    for i in 0..<utfArray.count {
        var shiftedChar = utfArray[i] + modKey
        if shiftedChar > 122 {
            shiftedChar -= 26
        } else if shiftedChar < 97 {
            shiftedChar += 26
        }
        utfArray[i] = shiftedChar
    }
    return String(bytes: utfArray, encoding: .utf8) ?? ""
}

//: [Next](@next)
