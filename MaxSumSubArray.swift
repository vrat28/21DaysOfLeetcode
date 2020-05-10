//
//  MaxSumSubArray.swift
//  Link -  https://leetcode.com/problems/maximum-subarray/
//  Solution:- https://leetcode.com/problems/maximum-subarray/submissions/
//  Created by Varun Rathi on 10/05/20.
//

import Foundation

class MaxSumSubArray {
    
    func maxSubArray(_ nums: [Int]) -> Int {
        var currentSum = nums[0]
        var maxSum = currentSum
        for i in 1..<nums.count {
            currentSum = max(currentSum + nums[i], nums[i])
            maxSum = max(maxSum,currentSum)
        }
        return maxSum
    }
    
    func test(){
        let input = [100,-2,4,7,-8,0,17]
        let result = maxSubArray(input)
        print(result)
    }
}
