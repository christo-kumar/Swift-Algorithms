//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//Problem-1: LenghtOfLongestSubstring

func lengthOfLongestSubstring(_ s:String) -> Int {
    var charIndexMap = [Character: Int]()
    var leftIndex = 0
    var maxLength = 0
    for (rightIndex, char) in s.enumerated() {
        if let index = charIndexMap[char], index >= leftIndex {
            leftIndex = index + 1
        }
        charIndexMap[char] = rightIndex
        maxLength = max(maxLength, rightIndex - leftIndex + 1)
    }
    return maxLength
}
//testcases
let testString1 = "abcabcbb"
//expected 3
print(lengthOfLongestSubstring(testString1))
let testString2 = "abcdabcbb"
//expected 4
print(lengthOfLongestSubstring(testString2))

func minWindow(_ s: String, _ t: String) -> String {
    guard s.count >= t.count else { return "" }
    let sArray = Array(s)
    var targetMap = [Character: Int]()
    targetMap = t.reduce(into: targetMap) { $0[$1, default: 0] += 1 }
    var windowFreq = [Character: Int]()
    var left = 0
    var right = 0
    var formed = 0
    let required = targetMap.count
    var minLength = Int.max
    var minStart = 0
    while right  < sArray.count {
        let charRight = sArray[right]
        windowFreq[charRight, default: 0] += 1
        
        if let targetCount = targetMap[charRight], windowFreq[charRight] == targetCount {
            formed += 1
        }
        while left <= right && formed == required {
            let currentWindowSize = right - left + 1
                        if currentWindowSize < minLength {
                            minLength = currentWindowSize
                            minStart = left
                        }
                        
                        let charLeft = sArray[left]
                        windowFreq[charLeft]! -= 1
                        
                        // If removing this character breaks the valid window
                        if let targetCount = targetMap[charLeft], windowFreq[charLeft]! < targetCount {
                            formed -= 1
                        }
                        
                        left += 1
        }
        right += 1
    }
    
    
    return minLength == Int.max ? "" : String(sArray[minStart..<minStart + minLength])
}

let s = "ADOBECODEBANC"
let t = "ABC"
print(minWindow(s, t))

func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var deque = [Int]()
    var result = [Int]()
    
    for (i, num) in nums.enumerated() {
        // Remove elements from the back of the deque that are out of the current window
        while !deque.isEmpty && deque.first! < i - k + 1 {
            deque.removeFirst()
        }
        
        // Remove elements from the front of the deque that are smaller than the current number
        while !deque.isEmpty && nums[deque.last!] < num {
            deque.removeLast()
        }
        
        // Add the current index to the deque
        deque.append(i)
        
        // Add the maximum value in the current window to the result
        if i >= k - 1 {
            result.append(nums[deque.first!])
        }
    }
    
    return result
}
