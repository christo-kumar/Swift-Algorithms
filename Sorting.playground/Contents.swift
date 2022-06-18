import UIKit

//Bubble Sort
func bubbleSort(_ array: inout [Int]) {
    for p1 in 0..<array.count {
        for p2 in p1..<array.count {
            if(array[p1] > array[p2]) {
                let temp = array[p1]
                array[p1] = array[p2]
                array[p2] = temp
            }
        }
    }
    
}
var array = [1,5,3,10,4,9]
bubbleSort(&array)
print(array)

