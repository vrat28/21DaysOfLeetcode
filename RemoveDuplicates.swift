//
//  RemoveDuplicates.swift
//  Link:- https://leetcode.com/problems/remove-duplicates-from-sorted-array/
//  Complexity: Time = O(*N*) , Space = O(1)
//  Created by Varun Rathi on 02/08/20.
//

import Foundation

class RemoveDup {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        
        var nextUniqueIndex = 1
        for i in 1..<nums.count{
            if (nums[i] != nums[i-1]){
                nums[nextUniqueIndex] = nums[i];
                nextUniqueIndex += 1
               
            }
        }
        return nextUniqueIndex
    }
}
