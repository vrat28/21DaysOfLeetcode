//
//  70_Climbing_Stairs.swift
//  Link:- https://leetcode.com/problems/climbing-stairs/submissions/
//  Complexity - O(N), Space = O(N) [DP table]
//  Created by Varun Rathi on 03/08/20.
//

/*
You are climbing a stair case. It takes n steps to reach to the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 */

import Foundation

class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n < 2 { return 1}
        // DP Table
        var dp = Array(repeating:0, count: n + 1)
        
        (dp[0], dp[1]) = (1,1)
        for i in 2...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        return dp[n]
    }
}

/*
Example 1:

Input: 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
Example 2:

Input: 3
Output: 3
Explanation: There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step
 */
