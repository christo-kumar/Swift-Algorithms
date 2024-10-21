//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

extension String {
    var isValidIPPart: Bool {
        guard let n = Int(self) else { return false }
        return n >= 0 && n <= 255 && String(n).count == count
    }
}

func validIPAddresses(_ string: String) -> [String] {
    // Write your code here.
    guard string.count >= 4 else { return [] }
    var ips = [String]()
    var digits = Array(string)
    //1921680
    for i in 0 ..< 3 {
        //1, 19, 192
        let partOne = String(digits[0...i])
        guard partOne.isValidIPPart else { continue }
        
        for j in i + 1 ..< i + 4 where j < digits.count {
            //9, 21, 921
            let partTwo = String(digits[(i+1...j)])
            guard partTwo.isValidIPPart else { continue }
            
            for k in j + 1 ..< j + 4 where k + 1 < digits.count {
                //2, 21, 216
                //1, 16, 168, 1680
                let partThree = String(digits[(j+1)...k])
                let partFour = String(digits[(k+1)...])
                if partThree.isValidIPPart && partFour.isValidIPPart {
                    ips.append([partOne,partTwo,partThree,partFour].joined(separator: "."))
                }
            }
        }
    }
    return ips
}

//: [Next](@next)
