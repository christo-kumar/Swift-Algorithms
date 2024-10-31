//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//Binary heap is DS similar to BST
//They are sorted vertically top to bottom rather horizontaly left to right
//They exists in flavours of maxHeap and minHeap
//They are used to get the maxima or minima for the set of data
//They can be implemented as nodes but array implemenataion is sleek..
//properties: peek, isEmpty, size
//functions: insert, heapifyUp, removeMax/min, heapifyDown
//private function: leftChildIndex(of ), rightChildIndex(of ), parentIndex(of )


class MaxBinaryHeap {
  var elements: [Int] = []
  init(){}
  
  var isEmpty: Bool {
    return elements.isEmpty
  }
  
  var size: Int {
    return elements.count
  }
  
  func peek() -> Int? {
    return elements.first
  }
  
  func insert(_ element: Int) {
    elements.append(element)
    heapifyUp(from: size - 1)
  }
  
  func removeMax() -> Int? {
    guard !isEmpty else { return nil }
    elements.swapAt(0, size - 1)
    let maxElement = elements.removeLast()
    if !isEmpty {
      heapifyDown(from: 0)
    }
    return maxElement
  }
  
  func printHeap() {
    print(elements)
  }
}

extension MaxBinaryHeap {
  
  private func parentIndex(of index: Int) -> Int {
    return (index - 1) / 2
  }
  
  private func leftChildIndex(of index: Int) -> Int {
    return 2 * index + 1
  }
  
  private func rightChildIndex(of index: Int) -> Int {
    return 2 * index + 2
  }
  
  private func heapifyUp(from index: Int) {
    guard index > 0 else { return }
    var currentIndex = index
    let element = elements[currentIndex]
    while currentIndex > 0 {
      let parentIndex = self.parentIndex(of: currentIndex)
      if element > elements[parentIndex] {
        elements[currentIndex] = elements[parentIndex]
        currentIndex = parentIndex
      } else {
        break
      }
    }
    elements[currentIndex] = element
  }
  
  private func heapifyDown(from index: Int) {
    var currentIndex = index
    while true {
      let leftChildIndex = self.leftChildIndex(of: currentIndex)
      let rightChildIndex = self.rightChildIndex(of: currentIndex)
      var maxIndex: Int = currentIndex
      if leftChildIndex < size && elements[leftChildIndex] > elements[maxIndex] {
        maxIndex = leftChildIndex
      } else if rightChildIndex < size && elements[rightChildIndex] > elements[maxIndex] {
        maxIndex = rightChildIndex
      }
      if maxIndex == currentIndex {
        break
      }
      elements.swapAt(currentIndex, maxIndex)
      currentIndex = maxIndex
    }
  }
}

let maxHeap = MaxBinaryHeap()
maxHeap.insert(1)
maxHeap.insert(2)
maxHeap.insert(3)
maxHeap.insert(9)
maxHeap.insert(4)
maxHeap.insert(5)
maxHeap.insert(6)
maxHeap.insert(7)
maxHeap.insert(8)
maxHeap.insert(50)
maxHeap.printHeap()
maxHeap.removeMax()
maxHeap.printHeap()



