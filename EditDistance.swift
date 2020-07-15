//
//  EditDistance.swift
//  
//
//  Created by Varun Rathi on 15/07/20.
//

import Foundation

class EditDistance {
    
    func levenshteinDistance(firstString: String, secondString: String) -> Int {
        var dp = [[Int]]()
        // dp.reserveCapacity(firstString.count)
        
        // Build initial DP array
        for i in 0..<firstString.count + 1 {
            var row = [Int]()
            //    row.reserveCapacity(secondString.count)
            for j in 0..<secondString.count + 1{
                row.append(j)
            }
            row[0] = i
            dp.append(row)
        }
        // Compute dp subproblems for all permutations of the substrings of String1, String 2
        
        for i in 1..<firstString.count + 1 {
            for j in 1..<secondString.count + 1{
                let firstIndex = firstString.index(firstString.startIndex, offsetBy: i - 1)
                let secondIndex = secondString.index(secondString.startIndex, offsetBy: j - 1)
                if firstString[firstIndex] == secondString[secondIndex] {
                    dp[i][j] = dp[i - 1][j - 1]
                }
                else {
                    dp[i][j] = 1 + min(dp[i][j-1], min(dp[i-1][j-1], dp[i-1][j]))
                }
            }
        }
        return dp[firstString.count][secondString.count]
    }
}
