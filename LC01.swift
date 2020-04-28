//
// ProblemName : Single Number
// URL : https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3283/
// Created by Varun Rathi on 13/04/20.
//

import Foundation

class Solution {
    // With Extra Memory
    func singleNumber_EM(_ nums: [Int]) -> Int {
        var singleNo = 0
        var hash = [Int:Int]()
        
        for num in nums {
            hash[num, default: 0] += 1
        }
        
        for i in 0..<nums.count {
            if hash[nums[i]] == 1 {
                singleNo = nums[i]
                break
            }
        }
        
        return singleNo
    }
    
    //W/o extra Mem
    func singleNumbe(_ nums:[Int]) -> Int {
        var initial  = 0
        for num in nums {
            initial = initial ^ num
        }
        
        return initial
    }
}
