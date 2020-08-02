//
//  169_Majority_Element.swift
//  Link:- https://leetcode.com/problems/majority-element/
//  Complexity :- Time = O(*N*), Space = O(1)
//  Created by Varun Rathi on 02/08/20.
//

import Foundation

class Solution {
       func majorityElement(_ nums: [Int]) -> Int {
        var majorityElement = nums[0]
        var frequency = 1
        
        for i in 1..<nums.count {
            if nums[i] == majorityElement {
                frequency += 1
            }
            else {
                if frequency == 0 {
                    frequency = 1
                    majorityElement = nums[i]
                }
                else {
                    frequency -= 1
                }
            }
        }
        
        return majorityElement
    }
}
