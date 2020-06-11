//
//  Balanced_Brackets.swift
//  https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
// https://leetcode.com/problems/valid-parentheses/
// Time : O(n) , Space : (n) for auxilary stack
//  Created by Varun Rathi on 11/06/20.
//

import Foundation


class BalancedBrackets {
    func checkBalancedBrackets(string: String) -> Bool {
        
        var stack = [Character]()
        let mapBrackets : [Character: Character] = ["}":"{", ")":"(", "]":"["]
        let openingBrackets = "([{"
        for char in string {
            if openingBrackets.contains(char){
                stack.append(char)
            }
            else {
                if stack.isEmpty {
                    return false
                }
                else if let last = stack.last, last == mapBrackets[char] {
                    stack.popLast()
                }
                else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}
