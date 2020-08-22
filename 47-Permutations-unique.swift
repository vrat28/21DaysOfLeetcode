//
//  47-Permutations-unique.swift
//  Link:- https://leetcode.com/problems/permutations-ii/
//  Complexity: Time = O(N*N!), Space = O(N!)
//  Created by Varun Rathi on 22/08/20.
//

import Foundation

class Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
         let r = nums.count - 1
       var input = nums
       var result:[[Int]] = []
        permuteAll(&input, l : 0 , r: r, output: &result)
        return result
    }
    

    func permuteAll(_ nums:inout [Int], l: Int, r : Int,output: inout [[Int]]){
            if l == r, !output.contains(nums) {
                   output.append(nums)
                    return
            }

            for i in stride(from: l,through: r, by: 1){
                    (nums[i],nums[l]) =   (nums[l],nums[i])
                    permuteAll(&nums,l:l+1,r:r,output:&output)
                    (nums[i],nums[l]) =   (nums[l],nums[i])
            }
    }
}
