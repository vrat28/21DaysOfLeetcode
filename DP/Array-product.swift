
/*
 Given an array A[] of positive integers, return an array of integers whose k'th element is equal to the product of every integer in A[] except for the k'th element in A[].
 
 Example:
 
 Input: [1, 1, 2, 5]
 Output: [10, 10, 5, 2]
 Explanation: The product of the entire array except for the first and second element is 10. The products of the entire array except for the third and fourth elements are 5 and 2, respectively.
 
 
  Complexity:
 Time = O(N)
 Space = O(N)
 */


class Solution {
    
  func productExceptCurrentElement(_ arr: [Int]) -> [Int] {
    // DP array for keeping the product except that element
      var dp = Array(repeating: 1, count: arr.count)
      var multiplier = 1
    // Pas 1: Traverse Left -> Right
    // Accumudate product of numbers without current number on the left side
      for i in 0..<arr.count {
        // First multiply with the mulitplier
          dp[i] *= multiplier
        // Update the multiplier to include the given number
          multiplier *= arr[i]
      }
      // Pass2:
    // Reset: Now traverse right -> Left
      multiplier = 1
      for i in stride(from: arr.count - 1, through: 0, by: -1){
        // This will accumulate product of numbers on the left and right  without the number itself
        dp[i] *= multiplier
        // Update the factor to include the current number
        multiplier *= arr[i]
      }
    // Return the DP array
      return dp
  }
}
