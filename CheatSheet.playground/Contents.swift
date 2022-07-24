import UIKit
import Darwin

///Array
var fruits = ["Apple", "Banana", "Cherry"]
var fruits1: Array<String> = Array<String>()

//Operations
//Appending
fruits1.append("Guava")
fruits1.append("Mango")
fruits.append(contentsOf: fruits1)

//Insert
fruits.insert("Guava", at: 0)

//Delete
fruits.remove(at: 0)

//find ~ firstIndex, first
if let index = fruits.firstIndex(where: {$0 == "Apple"}) {
   print(index)
}
if (fruits.contains("Apple")) {
    print("Element exsists")
}

//Slicing
let fruits2 = fruits.prefix(2)
print(fruits2)
let fruits3 = fruits.suffix(2)
print(fruits3)

let start = fruits.index(fruits.startIndex, offsetBy: 1)
let end = fruits.index(fruits.endIndex, offsetBy: -1)
let range = start...end
let fruits4 = fruits[range]
print(fruits4)
print(fruits)

//Iteration
//for in value
for fruit in fruits { print(fruit) }
//for in index
for index in 0..<fruits.count { print(index) }
//for in i,v
for (i,v) in fruits.enumerated() {print("\(i) - \(v)")}
//for stride through
for i in stride(from: 0, through: fruits.count, by: 1){print(i)}
//iterator
var itr = fruits.makeIterator()
while let v = itr.next() { print(v) }

//HOC
fruits.forEach { fruit in print(fruit) }
let mappedFruits = fruits.map { fruit in
    return  fruit.appending("s")
}
print(mappedFruits)
let filteredArray = fruits.filter { fruit in
    return fruit != "Apple"
}
print(filteredArray)

let sorted = fruits.sorted { a, b in
    return a > b
}
print("Sorting")
print(sorted)

let reduced = fruits.reduce(into: "") { s, v in
    return s.append(v)
}
print(reduced)

/*
////////////// String /////////
var greeting = "Hello, playground"
let charArray = Array(greeting)
print(charArray)
let str2 = String(charArray)
*/
////////// Map ///////
var movieMap = ["DCH":  1]
var someMap: Dictionary<String, Int> = Dictionary<String, Int> ()
for key in movieMap.keys{ print(movieMap[key]!)}






