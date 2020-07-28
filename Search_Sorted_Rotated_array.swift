//
//  Search_Sorted_Rotated_array.swift
//  Link:- https://leetcode.com/problems/search-in-rotated-sorted-array/
//  Complexity :- Time = O(Log (*N*)) ; Space = O(1)
//  Created by Varun Rathi on 29/07/20.
//

import Foundation

class BinarySearch_Rotated_Array {
    func search(_ nums: [Int], _ target: Int) -> Int {
       
        var low = 0, high = nums.count - 1
        
        while low <= high {
             let mid = low + (high - low)/2
             if nums[mid] == target {
                    return mid
             }
             
            if nums[low] <= nums[mid]{ // First Half is sorted
                if target < nums[mid] && target >= nums[low] {
                    high = mid - 1
                }
                else {
                        low = mid + 1
                }
            }
            else { // Second half is sorted
                
                if target > nums[mid] && target <= nums[high]{
                        low = mid + 1
                }
                else {
                        high = mid - 1
                }
            }
        }
        
        return -1
    }
}
