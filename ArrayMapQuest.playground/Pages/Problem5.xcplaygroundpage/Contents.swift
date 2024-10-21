//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    // Write your code here.
    coins.sort()
    var currentChange = 0
    
    for coin in coins {
        if coin > currentChange + 1 {
            return currentChange + 1
        }
        currentChange += coin
    }
    
    return currentChange + 1
}

var coins = [5,7,1,1,2,3,22]
print(nonConstructibleChange(&coins))

//: [Next](@next)
