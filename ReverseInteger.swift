//
//  ReverseInteger.swift
//  Link : https://leetcode.com/problems/reverse-integer/
//  Time : 0(N), Space : O(1)
//  Created by Varun Rathi on 14/05/20.
//

import Foundation

class ReverseInteger {
    func reverse(_ x: Int) -> Int{
        var sum = 0
        let m = x < 0 ? -1 : 1
        var  number = abs(x)
        while number > 0 {
            sum =   sum * 10 + (number % 10)
            number = number/10
        }
        // Handling range overdlow
        if   -2147483648...2147483647 ~=  sum * m {
            return sum*m
        }
        return 0
    }
    
    func test(){
        var testSuite = [(Int,Int)]()
        testSuite.append((123, 321))
        testSuite.append((0, 0))
        testSuite.append((-123, -321))
        testSuite.append((120, 21))
        testSuite.append((2147483648, 0))
        testSuite.append((-2147483649, 0))
        for testcase in testSuite {
            assert(testcase.1 == reverse(testcase.0), "Test case failed for Input :\(testcase.0)")
        }
    }
}
