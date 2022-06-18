import UIKit

//Recursion

//1. Factorial
func factorial(_ num : Int) -> Int {
    if num <= 1 { return 1 }
    return num * factorial(num - 1)
}
//print(factorial(5))

//2. Arithmatic Series
//2, 4,6,8,...20

func arithSeries(_ start: Int, _ cd: Int,_ curTerm: Int, _ nthTerm: Int) {
    if curTerm > nthTerm { return }
    print(start)
    arithSeries(start + cd, cd, curTerm + 1, nthTerm)
}
//arithSeries(2, 2, 1, 10)

//3. Fibbonacii
//1,1,2,3,5,8,13,23
func fibbo(_ prevVal: Int, _ curVal: Int, _ curTerm: Int, _ nthTerm: Int) {
    if curTerm > nthTerm { return }
    if curTerm == 1 {
        print(1)
        fibbo(1, 1, curTerm + 1 , nthTerm)
        return
    }
    print(curVal)
    fibbo(curVal, curVal + prevVal, curTerm + 1, nthTerm)
}
fibbo(0, 0, 1, 10)


