//
//  MinimumSumPath.swift
//  Link: https://leetcode.com/problems/minimum-path-sum/
//  Complexity: Time - O(M*N), Space - O(M*N)
//  Created by Varun Rathi on 27/07/20.
//

import Foundation

class MinSumPath {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let M = grid.count
        let N = grid[0].count
        var dp: [[Int]] = []
        for _ in 0..<M {
            dp.append(Array(repeating: 0, count: N))
        }
        
        for i in 0..<M {
            for j in 0..<N {
                 dp[i][j] += grid[i][j]

                 if i > 0  && j > 0{
                    dp[i][j] += min(dp[i][j - 1], dp[i - 1][j])
                 }
                 else if i > 0 {
                    
                    dp[i][j] += dp[i - 1][j]
                 }
                 else if j > 0 {
                    dp[i][j] += dp[i][j - 1]
                 }
                
            }
        }
        return dp[M - 1 ][N - 1]
    }
}
