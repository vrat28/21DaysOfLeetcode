//
//  1389_Create_Target_Array_Order.swift
//  Link-  https://leetcode.com/problems/create-target-array-in-the-given-order/
//  Complexity : Time = O(N), Space = O(1)
//  Created by Varun Rathi on 04/09/20.
//

import Foundation
class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var output = [Int]()
        let n = nums.count
        for i in stride(from:0,to: n, by: 1){
            if index[i] > n {
                output.append(nums[i])
            }
            else {
                 output.insert(nums[i],at:index[i])
            }
        }
        return output
    }
}
