//
//  384-Shuffle_an_array.swift
//  Link :- https://leetcode.com/problems/shuffle-an-array/
//  Complexity:- O(1)
//  Created by Varun Rathi on 14/09/20.
//

import Foundation

class Solution {
    
    var nums:[Int]
    init(_ nums: [Int]) {
        self.nums = nums
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return self.nums
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        guard self.nums.count > 0 else { return [] }
        var output = self.nums
        let n = nums.count - 1
        for i in stride(from : n, through : 0 , by : -1){
            
               let randomIndex = Int.random(in:0...i)
               (output[i],output[randomIndex]) = (output[randomIndex],output[i])
        }
        return output
    }
}
