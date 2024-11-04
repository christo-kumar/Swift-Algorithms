//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

let HOME_TEAM_WON = 1

func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
    // Write your code here.
    var scores = [String:Int]()
    for i in 0..<results.count {
        let winner = results[i] == HOME_TEAM_WON ? competitions[i][0] : competitions[i][1]
        scores[winner,default: 0] += 3
    }
    return scores.max { $0.value < $1.value }?.key ?? ""
}

print(tournamentWinner([["HTML","C++"],["C++","Python"],["Python","HTML"]], [0,0,1]))

//: [Next](@next)
