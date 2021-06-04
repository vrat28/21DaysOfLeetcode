/*
Link: https://leetcode.com/problems/maximum-area-of-a-piece-of-cake-after-horizontal-and-vertical-cuts/
 
 Complexity : O(MLogM + NLogN)
 Difficulty: Medium
 Tag: June Leetcode Challenge : Day 3
 */

class Solution {
    func maxArea(_ h: Int, _ w: Int, _ horizontalCuts: [Int], _ verticalCuts: [Int]) -> Int {
        // first sort the cuts
        let hcuts = horizontalCuts.sorted()
        let vcuts = verticalCuts.sorted()
        var maxWidth:Int = 0,  maxHeight:Int = 0
      
        // Find max gap b/w the vertical lines  = Width
        maxWidth = max(vcuts[0], w - vcuts.last!)
        for i in 1..<vcuts.count{
            maxWidth = max(maxWidth, vcuts[i] - vcuts[i-1])
        }
       
        // Max gap b/w horizontal line = Height
        maxHeight = max(hcuts[0], h - hcuts.last!)
        for i in 1..<hcuts.count{
            maxHeight = max(maxHeight, hcuts[i] - hcuts[i-1])
        }
        // calculate the area
        // since area would be huge return this modulo 10^9 + 7.
        return (maxWidth * maxHeight) % 1000000007
    }
}
