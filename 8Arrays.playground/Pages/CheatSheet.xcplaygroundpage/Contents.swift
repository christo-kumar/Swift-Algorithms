//: [Previous](@previous)

import Foundation

//*************** Array Cheat Sheet *********************

var greeting = "Hello, playground"

var starks = [String]()
let family = ["Rob", "Sansa", "Jon", "Arya", "Bryan"]

//Append
starks.append("Ned")
starks.append(contentsOf: family)

//Insert
starks.insert("Cat", at: 1)

//update
starks[1] = "Catylne"

//delete
starks.remove(at: 3)

//search
//find ~ firstIndex, first
if let index = starks.firstIndex(where: {$0 == "Ned"}) {
   print(index)
}
if (starks.contains("Ned")) {
    print("Element exsists")
}

//slicing
let stark2 = starks.prefix(2)
print(stark2)
let stark3 = starks.suffix(2)
print(stark3)

let start = starks.index(starks.startIndex, offsetBy: 1)
let end = starks.index(starks.endIndex, offsetBy: -1)
let range = start...end
let starks4 = starks[range]
print(starks4)

//Iterate the array
for stark in starks { print("for-in: " + stark) }
for i in 0..<starks.count { print("Simple index: " + starks[i])}
for (i,v) in starks.enumerated() { print("Enumerated index: \(i) stark: \(v) ")}
for i in stride(from: starks.count - 1, through: 0, by: -1) {
    print("Stride \(starks[i]) stark")
}
var index = 0
while index < starks.count {
    print("while index: " + starks[index])
    index += 1
}

var iterator = starks.makeIterator()
while let stark = iterator.next() {
    print("while iterater: " + stark)
}

//Array HOFs
let someArray = [1,2,3,4,5]
let squareArray = someArray.map { $0 * $0 }
print("Map: " + squareArray.description)
let descending = someArray.sorted { $0 > $1 }
print("descending: " + descending.description)
let filtered = someArray.filter{ $0 > 2 }
print("filtered: " + filtered.description)
let reduced = someArray.reduce(into: 0) { $0 = $0 + $1 }
print("reduced: " + reduced.description)
let anotherArray = [[1,2],[3,4],[5,6]]

//Flat Map: Flattens the 2D array to array
let flatMap = anotherArray.flatMap { $0 }
print("flatMap: " + flatMap.description)
let yetAnotherArray = ["256", "123", "def"]

//Compact Map: Ignores nil while conversion
let compactMap = yetAnotherArray.compactMap { Int($0) }
print("Compact Map: " + compactMap.description)

//*************** Dictionary Cheat Sheet *********************
var emptyDict = [String:Int]()
emptyDict["DCH"] = 3
emptyDict["QSQT"] = 1
var anotherDic = ["DCH":1, "ZMDB": 2]
emptyDict.merge(anotherDic) { current, new in
    return current + new
}
for key in emptyDict.keys {
    print(key + "value: \(emptyDict[key])")
}
emptyDict.removeValue(forKey: "DCH")

var string = "Hello World"
let charCountMap = string.reduce(into: [:]) { $0[$1, default:0] += 1 }
print(charCountMap)

////////////// Type Conversions /////////
//Int to String
let myString = String(42)
print(myString)
let myInt = Int(myString)
print(myInt ?? 0)

//var greeting = "Hello, playground"
//let charArray = Array(greeting)
//let str2 = String(charArray)
//print(str2)




