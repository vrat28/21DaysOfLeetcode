//
//  HappyNumber.swift
//  Link : https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3284/
//
//  Created by Varun Rathi on 28/04/20.
//

import Foundation

class HappyNumberSolution {
    
    func processHappyNumber(num:Int, set :inout Set<Int>)->Int{
        var n = num
        while n % 10 == 0 {
            n = n / 10
        }
        
        set.insert(n)
        var sum = 0
        while n > 0 {
            let lastdigit = n % 10
            sum += lastdigit*lastdigit
            n = n / 10
        }
        return sum
    }
    
    func isHappy(_ n: Int) -> Bool {
        var currentNumber = n
        var set = Set<Int>()
        
        while currentNumber > 0 && set.contains(currentNumber) == false {
            print("Current Number = \(currentNumber)")
            currentNumber = processHappyNumber(num: currentNumber, set: &set)
        }
        return currentNumber == 1
    }
}
