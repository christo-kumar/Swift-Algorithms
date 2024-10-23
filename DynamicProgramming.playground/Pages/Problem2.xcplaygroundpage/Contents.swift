import UIKit

var greeting = "Hello, playground"

class Program {
  func numberOfWaysToMakeChange(target: Int, denominations: [Int]) -> Int {
    // Write your code here.
    var numberOfWaysArray = [Int](repeating: 0, count: target + 1)
    numberOfWaysArray[0] = 1
    for coin in denominations {
      for amount in stride(from: 1, through: target, by: 1){
        if coin <= amount {
          numberOfWaysArray[amount] += numberOfWaysArray[amount - coin]
        }
      }
    }
    
    return numberOfWaysArray[target]
  }
}
