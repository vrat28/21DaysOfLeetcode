//
//  135_Insert_Search_position.swift
//  Link: https://leetcode.com/problems/search-insert-position/
//  Complexity: Time = Log(*N*), Space = O(1)
//  Created by Varun Rathi on 02/08/20.
//

/*
Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.
 */

import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        var low = 0 , high = nums.count - 1
        
        while low <= high {
            let mid = low + (high - low)/2
            
            if nums[mid] == target{
                    return mid
            }
            else if nums[mid] > target {
                    high = mid - 1
            }
            else {
                 low = mid + 1
            }
        }
        return low
    }
}

/*
Example 1:

Input: [1,3,5,6], 5
Output: 2
Example 2:

Input: [1,3,5,6], 2
Output: 1
Example 3:

Input: [1,3,5,6], 7
Output: 4
Example 4:

Input: [1,3,5,6], 0
Output: 0
*/
