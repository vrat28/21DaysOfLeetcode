//
//  Modified_Binary_Search.swift
//  Link:- https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array
//  Complexity:- O(Log *N*) , Space = O(1)
//  Created by Varun Rathi on 01/08/20.
//

import Foundation

class ModifiedBinarySearch {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var minIndex = -1,maxIndex = -1
        
        var low = 0, high = nums.count - 1
        
        // low
        while low <= high {
            let mid = low + (high - low)/2;
             if nums[mid] == target {
                    high = mid - 1
                    minIndex = mid
             }
            
            else if nums[mid] > target {
                    high = mid - 1
            }
            else {
                    low = mid + 1
            }
        }
        
        low = 0
        high = nums.count - 1
        
        // High
        while low <= high {
            let mid = low + (high - low)/2;
             if nums[mid] == target {
                    low = mid + 1
                    maxIndex = mid
             }
            
            else if nums[mid] > target {
                    high = mid - 1
            }
            else {
                    low = mid + 1
            }
        
        }
        return [minIndex,maxIndex]
    }
}
