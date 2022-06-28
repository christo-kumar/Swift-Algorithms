import UIKit

var greeting = "Swift Algos"
/*
 1. Palindrome
 2. Anagram
 3. Ceaser Cipher
 4. Sieve of Eratosthenes
 5. Fizzbizz
 */
//1,2,Fizz, 4, buzz.... fizzbuzz
func fizzbuzz(_ term: Int) {
    for i in 1...term {
        if i%5 == 0 && i%3 == 0 {
            print("FizzBuzz")
        } else if (i%5 == 0) {
            print("Buzz")
        } else if (i%3 == 0) {
            print("Fizz")
        } else {
            print(i)
        }
    }
}

fizzbuzz(100)

//30 - All the primes between 1-30
func sieveOfEratosthenes(_ till: Int) -> [Bool] {
    //prime no will be represented by index in array true means prime
    //Mark all indexs true
    //Identify prime and mark all its multiple index as false
    var isPrimeArr = Array<Bool>(repeating: true, count: till+1)
    isPrimeArr[0] = false
    isPrimeArr[1] = false
    
    for i in 2..<isPrimeArr.count {
        if isPrimeArr[i] {
            //We will mark all its multiple to false
            for j in stride(from: 2*i, to: isPrimeArr.count, by: i) {
                isPrimeArr[j] = false
            }
        }
    }
    return isPrimeArr
}

func printSieve(_ arr: [Bool]) {
    for (ind, val) in arr.enumerated() {
        print("\(ind) - \(val) ")
    }
}

//printSieve(sieveOfEratosthenes(30))



func ceaserCipher(_ s: String) -> String {
    var cipher = Array(s)
    for i in 0..<s.count {
        if let ascii = cipher[i].asciiValue {
            var newAscii = ascii + 5
            if newAscii > 122 {
                newAscii = 41 + (newAscii - 122)
            }
            cipher[i] = Character(UnicodeScalar(newAscii))
        }
    }
    return String(cipher)
}

//print(ceaserCipher("This is how it works"))


func isAnagramV1(_ s:String, _ t:String) -> Bool {
    return s.sorted() == t.sorted()
}

func sortString(_ s: String) -> String {
    let sortedStr = s.sorted { a, b in
        return a.asciiValue! > b.asciiValue!
    }
    return String(sortedStr)
}
func isAnagramV2(_ s:String, _ t:String) -> Bool {
    return sortString(s) == sortString(t)
}
//isAnagramV1("Fired", "Freed")
//isAnagramV2("Fired", "Freed")

func isPalindrom(_ s: String) -> Bool {
    let charArray = Array(s)
    let last = s.count - 1
    for p1 in 0..<s.count/2{
        let p2 = last - p1
        if charArray[p2] != charArray[p1] {
            return false
        }
    }
    return true
}
//print(isPalindrom("aba"))
//print(isPalindrom("abc"))
//print(isPalindrom("abca"))



















func getCharacterMap(_ s: String) -> Dictionary<Character,Int> {
    var dict: Dictionary<Character,Int> = [:]
    let charArray = Array(s)
    for i in 0..<s.count {
        let char = charArray[i]
        let val = dict[char] ?? 0
        dict[char] = val + 1
    }
    return dict
}
func anagram2(_ s: String, _ t: String) -> Bool{
    let map1 = getCharacterMap(s)
    let map2 = getCharacterMap(t)
    for key in map1.keys {
        if map1[key] != map2[key] {
            return false
        }
    }
    return true
}






