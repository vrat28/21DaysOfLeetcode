//
//  BigInteger.swift
//  
//
//  Created by Varun Rathi on 13/05/20.
//

import Foundation


class BigIntegers {
    
    func add(input1:String, input2:String)->String{
        var result = ""
        var carry = 0
        var n1:[Character],n2:[Character]
        
        if input1.count > input2.count {
            n1 = input1.reversed()
            n2 = input2.reversed()
        }
        else {
            n1 = input2.reversed()
            n2 = input1.reversed()
        }
        
        for i in 0..<n2.count {
            var sum = carry
            if let c1 = n1[i].wholeNumberValue {
                sum += c1
            }
            if let c2 = n2[i].wholeNumberValue {
                sum += c2
            }
            
            result += String(sum % 10)
            carry = sum / 10
        }
        
        for i in n2.count..<n1.count {
            var sum = carry
            if let c1 = n1[i].wholeNumberValue {
                sum += c1
            }
            
            result += String(sum % 10)
            carry = sum / 10
            
        }
        
        if carry > 0 {
            result += String(carry)
        }
        return String(result.reversed())
    }
    
    func test(){
        var testSuite = [(String,String,String)]()
        testSuite.append(("999", "1", "1000"))
        testSuite.append(("1111", "22", "1133"))
        testSuite.append(("123", "456", "579"))
        testSuite.append(("00000", "1", "00001"))
        testSuite.append(("99", "99", "198"))
        testSuite.append(("999", "222", "1221"))
        
        for testCase in testSuite {
            let r = add(input1: testCase.0, input2: testCase.1)
            assert(r == testCase.2, "Test failed for Input : [\(testCase.0), \(testCase.1)]")
        }
    }
}
