/*
 Given a 2D array that resembles the shape of a triangle, return the min-cost path from the top to the bottom.

 From each cell, you may only go diagonally down to the left or right.
 
 Example:
 Input:
 [
   [5],
   [1,6],
   [4,3,10],
   [3,2,4,1]
 ]

 Output: 11
 Explanation:
 [
       [5],
     [1,  6],
    [4, 3, 10],
   [3, 2, 4, 1]
 ]
 
 Complexity:
 
 Time = O(N)
 Space = O(N)
 
 */



class Solution {
  func minimumPathCost(_ triangle: [[Int]]) -> Int {
    // Create the DP table
    // This will store the min path  DP[i] = minimum path till row i
    var dp = Array(repeating:Int.max, count:triangle.count)
    //The first row will always be a single element, thus it is the minimum weight for triangle starting and end at row 0
    dp[0] = triangle[0][0]
    // to track the selected column
    var col = 0
    // At every row, we have a decision:- To keep the same column or change to Column(Down) + 1 (Diagonal down)
    for i in 1..<triangle.count{
        // Change the column to whatever is minimum
      if triangle[i][col] > triangle[i][col + 1]{
          col = col + 1
      }
    // minimum path would be = minimum path till previous row + element at selected row,coln
      dp[i] = dp[i - 1] + triangle[i][col]
    }
    // The last row would have minimum path for whole triangle
    return dp[triangle.count - 1]
  }
}
