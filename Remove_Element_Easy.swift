//
//  Remove_Duplicates.swift
//  Link:- https://leetcode.com/problems/remove-element/
//  Complexity :- Time : O(*N*) , Space : O(1)
//  Created by Varun Rathi on 02/08/20.
//

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var currentIndex = 0
        
        for i in 0..<nums.count {
              if  nums[i] != val {
                  nums[currentIndex] = nums[i]
                  currentIndex += 1
              }
        }
        return currentIndex
    }
}
