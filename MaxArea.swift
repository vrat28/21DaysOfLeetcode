//
//  MaxArea.swift
//  Link :- https://leetcode.com/problems/container-with-most-water/
//  Time = 0(N), Space  = O(1)
//  Created by Varun Rathi on 14/05/20.
//

import Foundation

class Solution {
    
    func maxArea(_ height: [Int]) -> Int {
        
        var i = 0
        var j = height.count - 1
        var maxArea = 0
        
        while i < j {
            let currentArea = min(height[i], height[j]) * (j - i)
            maxArea = max(maxArea, currentArea)
            if height[i] > height[j] {
                j -= 1
            }
            else {
                i += 1
            }
        }
        return maxArea
    }
    func test(){
        let i111 = [1,8,6,2,5,4,8,3,7]
        let  re = maxArea(i111)
    }
    
}
