//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

let firstPart = greeting.prefix(5)
let lastPart = greeting.suffix(5)

//Index Manipulation
var start = greeting.startIndex
var end = greeting.index(before: greeting.endIndex)
let next = greeting.index(after: start)
let prev = greeting.index(before: end)

//Range Creation
let startIndex = greeting.index(greeting.startIndex, offsetBy: 2)
let endIndex = greeting.index(greeting.endIndex, offsetBy: -2)
let range = startIndex...endIndex
let substring = greeting[range]

//encoding
var utfArray = Array(greeting.utf8)
let backAgain = String(bytes: utfArray, encoding: .utf8) ?? ""

//var encoded = [Character]()
//Convert String to [Character]
let charArray = Array(greeting)

//Convert [Character] to String
let backString = String(charArray)

//Convert String to [Character:Int]
var charsMap = greeting.reduce(into: [:]) { $0 [$1,default:0] += 1}

let numberString = String(42)
let number = Int(numberString)
greeting.sorted()
greeting.hasPrefix("aa")
greeting.hasSuffix("bb")
greeting.lowercased()
greeting.uppercased()

//: [Next](@next)
