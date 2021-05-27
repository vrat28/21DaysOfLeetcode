// Link : https://leetcode.com/problems/trapping-rain-water/


class Solution {
    func trap(_ height: [Int]) -> Int {
        guard height.count > 2 else { return 0}
        let n = height.count-1
        var totalWater = 0
        var left = Array(repeating: 0 , count:height.count)
        left[0] = height[0]
        
        for i in 1..<height.count{
            left[i] = max(height[i],left[i-1])
        }
        
        var right = Array(repeating: 0 , count:height.count)
        right[n] = height[n]
        for i in stride(from:n-1,through:0,by:-1){
            right[i] = max(height[i],right[i+1])
        }
        
        for i in 0..<height.count {
            totalWater += min(left[i],right[i]) - height[i]
        }
        
        return totalWater
    }
}
