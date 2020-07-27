//
//  Sorted_Array_To_BST.swift
//  Link:- https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/


// Space Complexitity :- O(N) [Recursion stack]
// Time Complexity:- O(N)
//  Created by Varun Rathi on 28/07/20.
//

import Foundation

class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return getRootNodeForSubArray(nums,0,nums.count - 1)
    }
    
    func getRootNodeForSubArray(_ nums:[Int],_ low:Int,_ high:Int)->TreeNode? {
        
        guard  low <= high else { return nil}
        
        let mid = low + (high - low)/2
        let node =  TreeNode(nums[mid])
        node.left = getRoot(nums,low,mid - 1)
        node.right = getRoot(nums,mid + 1, high)
        return node
    }
}
