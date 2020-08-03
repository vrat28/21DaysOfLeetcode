//
//  238-Move_Zeros.swift
//  Link:- https://leetcode.com/problems/move-zeroes/
//  Complexity:- Time = O(N), Space = O(1)
//  Created by Varun Rathi on 03/08/20.
//

/*
Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 */

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
       var nextIdx = 0
       
        for i in 0..<nums.count{
              if nums[i] != 0 {
                  nums[nextIdx] = nums[i]
                  nextIdx += 1
              }
        }
        
        for i in nextIdx..<nums.count {
            nums[i] = 0
        }
    }
}

/*

Example:

Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
 */
