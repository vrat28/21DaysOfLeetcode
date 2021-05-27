
/*
 Given an array A[] of positive integers, return an array of indexes for a subarray on which on sorting, results in sorted entire array.
 
 Example:
 
 Input: [1,2,3,4,5,8,6,7,9,10,11]
 Output: [5,7]
 Explanation: The subarray (8,6,7) on sorting, sorts the entire array
 
 Input : [3,2]
 Output : [0,1]

 
 Input: [0,1,2,3,4,5]
 Output: [-1,-1]
 
  Complexity:
 Time = O(N)
 Space = O(1)
 */


class Solution {
    func getSubArray(_ arr:[Int]) -> [Int]{
            var left = -1, right = -1
            for i in 1..<arr.count{
                if arr[i ] < arr[i - 1] {
                    left = i-1
                    right = left + 1
                    while left > 0 , arr[left-1] > arr[i]{
                        left -= 1
                    }
                    while right < arr.count-1, arr[right+1] < arr[i-1]{
                        right += 1
                    }
                    return [left,right]
                }
            }
            return [left,right]
        }
}
