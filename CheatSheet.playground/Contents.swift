import UIKit
import Darwin

/// Array ///
var array = [1,3,5,7,9]
var propArray: Array<Int> = Array<Int>()

//Operation
array.append(1)
array.append(contentsOf: [9,10])
array.insert(100, at: 0)
array[0] = 200
array.remove(at: 0)

//Iteration Workflow
for i in array { print(i) }
for i in 0..<array.count {print(i) }
for (i, v) in array.enumerated() { print("\(i) \(v)")}
for i in stride(from: 0, to: array.count , by:1) { print(i) }
var itr = array.makeIterator()
while let i = itr.next() { print(i)}

//Hoc
array.forEach { i in print(i) }
let mappedArray = array.map { num in
    return num * num
}
print(mappedArray)
let filtered = array.filter { num in
    return num >= 3
}
print(filtered)
let reduced = array.reduce(into: 0) { s, v in
    return s = s + v
}
print(reduced)
let sorted = array.sorted { a, b in
    return a > b
}
print(sorted)

////////////// String /////////
var greeting = "Hello, playground"
print(greeting.prefix(5))
print(greeting.suffix(5))
let startIndex = greeting.index(greeting.startIndex, offsetBy: 5)
let endIndex = greeting.index(greeting.endIndex, offsetBy: -2)
let range = startIndex...endIndex
let subgreeting = greeting[range]
print(subgreeting)
greeting.isEmpty
greeting.count
let charArray = Array(greeting)
print(charArray)
let str2 = String(charArray)

////////// Map ///////
var movieMap = ["DCH":  1]
var someMap: Dictionary<String, Int> = Dictionary<String, Int> ()
for key in movieMap.keys{ print(movieMap[key]!)}






