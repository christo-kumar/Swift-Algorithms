func heapSort(_ array: inout [Int]) {
    let count = array.count
    
    // Step 1: Build the max heap in place
    var i = count / 2 - 1
    while i >= 0 {
        heapify(array: &array, heapSize: count, rootIndex: i)
        i -= 1
    }
    
    // Step 2: Extract elements from the heap one by one
    i = count - 1
    while i >= 1 {
        array.swapAt(0, i)      // Move current root (max) to the end
        heapify(array: &array, heapSize: i, rootIndex: 0)   // Heapify the reduced heap
        i -= 1
    }
}

// Helper function to maintain the max-heap property
func heapify(array: inout [Int], heapSize: Int, rootIndex: Int) {
    var largest = rootIndex
    let leftChild = 2 * rootIndex + 1
    let rightChild = 2 * rootIndex + 2

    // Check if left child is larger than root
    if leftChild < heapSize && array[leftChild] > array[largest] {
        largest = leftChild
    }

    // Check if right child is larger than the largest so far
    if rightChild < heapSize && array[rightChild] > array[largest] {
        largest = rightChild
    }

    // Swap and continue heapifying if root is not largest
    if largest != rootIndex {
        array.swapAt(rootIndex, largest)
        heapify(array: &array, heapSize: heapSize, rootIndex: largest)
    }
}

var array = [12, 11, 13, 5, 6, 7]
heapSort(&array)
print("Sorted array: \(array)")
