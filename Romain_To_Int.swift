//
//  Romain_To_Int.swift
//  Link:- https://leetcode.com/problems/roman-to-integer/
//  Time : - O(N), Space - O(1)
//  Created by Varun Rathi on 14/05/20.
//

import Foundation


class RomanToInt {
    func romanToInt(_ s: String) -> Int {
        let map:[Character:Int] = ["I":1, "V": 5,   "X":10, "L":50, "C":100,  "D":500, "M":1000]
        var numberSum = 0
        var lastDigit = 0
        for char in s.reversed() {
            if let digit = map[char] {
                
                if digit >= lastDigit {
                    numberSum += digit
                }
                else {
                    numberSum -= digit
                }
                lastDigit  = digit
            }
        }
        return numberSum
    }
    
    func test(){
        var testSuite = [(String,Int)]()
        testSuite.append(("X", 10))
        testSuite.append(("XVI", 16))
        testSuite.append(("LVIII", 58))
        testSuite.append(("III", 3))
        testSuite.append(("IX", 9))
        
        for testcase in testSuite {
            assert(testcase.1 == romanToInt(testcase.0))
        }
    }
}
