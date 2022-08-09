import UIKit

//Bubble Sort
func bubbleSort(_ array: inout [Int]) {
    let length = array.count
    for p1 in 0..<length {
        for p2 in 0..<(length - 1) - p1 {
            print("p2 - \(p2), p1 - \(p1)")
            if(array[p2] > array[p2+1]) {
                let temp = array[p2]
                array[p2] = array[p2+1]
                array[p2+1] = temp
            }
        }
    }
}
var array = [1,5,3,10,4,9]
bubbleSort(&array)
print(array)

//Insertion Sort
func insertionSort(_ array: inout [Int]) {
    let lenght = array.count
    for i in 1..<lenght {
        print(i) //1,2,3,4
        let current = array[i]
        var j = i - 1 //0, 1, 2, 3
        while j>=0 && current < array[j] {
            array[j+1] = array[j]
            j = j - 1
        }
        array[j+1] = current
    }
}

//Merge Sort
func mergeSort(_ array: inout[Int]) {
    
    func divide(_ si: Int, _ ei: Int) {
        if si >= ei { return }
        
        let mid = (si + ei) / 2
        divide(si,mid)
        divide(mid+1, ei)
        conquer(si, mid, ei)
    }

    func conquer(_ si: Int,_ mid: Int,_ ei: Int) {
        let arraySize = (ei - si) + 1
        var merged = Array<Int>(repeating: 0, count: arraySize)
        var idx1 = si
        var idx2 = mid + 1
        var mI = 0
        
        while (idx1 <= mid && idx2 <= ei) {
            if array[idx1] <= array[idx2] {
                merged[mI] = array[idx1]
                mI+=1
                idx1+=1
            } else if array[idx2] <= array[idx1] {
                merged[mI] = array[idx2]
                mI+=1
                idx2+=1
            }
        }
        
        while(idx1 <= mid) {
            merged[mI] = array[idx1]
            mI+=1
            idx1+=1
        }
        
        while(idx2 <= ei) {
            merged[mI] = array[idx2]
            mI+=1
            idx2+=1
        }
        
        var j = si
        for i in 0..<merged.count {
            array[j] = merged[i]
            j+=1
        }
    }
    
    divide(0, array.count - 1)
    print(array)
}

//var arr = [6,3,9,5,2,8]
//mergeSort(&arr)

