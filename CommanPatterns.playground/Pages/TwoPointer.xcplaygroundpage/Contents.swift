import UIKit

var greeting = "Hello, playground"
func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    while left < right {
        let currentSum = numbers[left] + numbers[right]
        if currentSum == target {
            return [left, right]
        } else if currentSum > target {
            right -= 1
        } else {
            left += 1
        }
    }
    return []
}

func maxArea(_ height: [Int]) -> Int {
    var left = 0
    var right = height.count - 1
    var maxArea = 0
    while left < right {
        let width = right - left
        let minHeight = min(height[left], height[right])
        let area = width * minHeight
        maxArea = max(maxArea, area)
        if height[left] < height[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    return maxArea
}

func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
  // Write your code here.
  array.sort()
  var answer = [[Int]]()
  for i in 0..<array.count - 2 {
    var l = i + 1
    var r = array.count - 1
    while l < r {
      let sum = array[i] + array[l] + array[r]
      if sum == targetSum {
        answer.append([array[i], array[l], array[r]])
        l += 1
        r -= 1
      } else if sum < targetSum {
        l += 1
      } else {
        r -= 1
      }
    }
  }
  return answer
}
