//
//  66-Plus_One.swift
//  Link - https://leetcode.com/problems/plus-one/
//  Complexity:- Time = O(*N*), Space = O(1)
//  Created by Varun Rathi on 02/08/20.
//

/*
Given a non-empty array of digits representing a non-negative integer, increment one to the integer.

The digits are stored such that the most significant digit is at the head of the list, and each element in the array contains a single digit.

You may assume the integer does not contain any leading zero, except the number 0 itself.
 */

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits
        var carry = 1
        
        for i in stride(from: digits.count - 1, through:0, by :-1){
               var value = nums[i]  + carry
               carry = value / 10
               nums[i] = value % 10
        }
        
        if carry > 0 {
               nums.insert(1, at: 0)
        }
        
        return nums
    }
}

/*
Example 1:

Input: [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.
Example 2:

Input: [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
 */
