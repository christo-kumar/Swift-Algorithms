import UIKit

var greeting = "min max stack"

class Program {
  // Feel free to add new properties and methods to the class.
  class MinMaxStack {
    private var elements: [Int] = []
    private var maximum: [Int] = []
    private var minimum: [Int] = []
    
    func peek() -> Int? {
      // Write your code here.
      return elements.last
    }

    func pop() -> Int? {
      // Write your code here.
      minimum.popLast()
      maximum.popLast()
      return elements.popLast()
    }

    func push(number: Int) {
      // Write your code here.
      elements.append(number)
      minimum.append(min(minimum.last ?? number, number))
      maximum.append(max(maximum.last ?? number, number))
    }

    func getMin() -> Int? {
      // Write your code here.
      return minimum.last
    }

    func getMax() -> Int? {
      // Write your code here.
      return maximum.last
    }
  }
}

