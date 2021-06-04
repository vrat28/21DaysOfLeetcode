/*
Link: https://leetcode.com/problems/max-area-of-island/
 
 Complexity : Time = O(R*C) , Space = O(R*C)
 Difficulty: Medium
 Tag: June Leetcode Challenge
 */

class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var maxArea = 0 , grid = grid
        for i in 0..<grid.count{
            for j in 0..<grid[0].count{
                if grid[i][j] == 0 {
                    continue
                }
                let area = dfs(i,j,&grid)
                maxArea = max(area,maxArea)
            }
        }
        return maxArea
        
    }
    
    func dfs(_ row:Int,_ col:Int, _ board:inout [[Int]]) -> Int {
        guard row >= 0 , row < board.count, col >= 0, col < board[0].count else { return 0}
        if board[row][col] == 0 { return 0}
       
        board[row][col] = 0
        var count = 1  // Self
        count += dfs(row+1,col,&board) + dfs(row-1,col,&board) // Down, Up
        count += dfs(row,col+1,&board) + dfs(row,col-1,&board) // Right , Left
        return count
    }
}
