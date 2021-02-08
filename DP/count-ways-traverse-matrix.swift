/*
 Given an integer value m (rows of a matrix), and an interger value n (columns of a matrix), return the total possible unique, simple, paths from the top-left of the matrix to the bottom-right with restricted moves.

 You may only make one of these moves at each position:
 Down 1 cell
 Right 1 cell
 
 Explanation:
 
 Input: m = 3, n = 3
 Output: 6
 Explanation:
 s -> "start"
 e -> "end"
  -----------
 | s | _ | _ |
 | _ | _ | _ |
 | _ | _ | e |
  -----------

 Total unique paths to any given cell:
  -----------
 | 1 | 1 | 1 |
 | 1 | 2 | 3 |
 | 1 | 3 | 6 |
  -----------
 
 
 Complexity:
 Time = O(M*N)
 Space = O(M*N)
 */


class Solution {
  func uniquePaths(_ rows: Int, _ cols: Int) -> Int {
    // Create bottom up DP table
    var dp = [[Int]]()
    for i in 0..<rows {
      dp.append(Array(repeating:0,count:cols))
    }
    
    // The first element can be traversed in only 1 way
    dp[0][0] = 1
    // Fill the first column of every row
    for i in 0..<rows{
      dp[i][0] = 1
    }
    // fill the first row of every column
    for i in 0..<cols{
      dp[0][i] = 1
    }
    
    // Since ways by adding number of ways of reaching upper cell and left cell
    for i in 1..<rows {
      for j in 1..<cols {
        dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
      }
    }
    
    // return the last element of the table
    // Subtract -1: As rows,cols are 0-based
    //Finally the last element and last row is the sum of all the ways to reach from 'S' to that cell.
    return dp[rows - 1][cols - 1]
  }
}
