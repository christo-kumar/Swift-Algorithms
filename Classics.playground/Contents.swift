import UIKit

var greeting = "Swift Algos"
/*
 1. Palindrome
 2. Anagram
 3. Ceaser Cipher
 4. Sieve of Eratosthese
 5. Fizzbizz
 6. Ransom Note
 */
//[a][b][a]
//Fired, Fried


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

print(ceaserCipher("This is how it works"))


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






