//
//  LongestPeak.Swift
//  Link: https://www.geeksforgeeks.org/longest-mountain-subarray/
//  Complexity:- Time : O(n) ; Space : O(1)
//  Created by Varun Rathi on 14/06/20.
//

import Foundation

class LongestPeak {
    func findLongestPeak(array: [Int]) -> Int {
        // Write your code here.
        var maxPeak = 0
        var i  = 1
        while i < array.count - 1 {
            
            var isPeak = array[i] > array[i-1] && array[i] > array[i+1]
            
            if !isPeak {
                i += 1
                continue
            }
            
            var leftIdx = i - 2
            while leftIdx >= 0 && array[leftIdx+1] > array[leftIdx]{
                leftIdx -= 1
            }
            
            var rightIdx = i + 2
            while  rightIdx < array.count , array[rightIdx ] < array[rightIdx - 1]{
                rightIdx += 1
            }
            
            i =  rightIdx
            let currentPeak = rightIdx - leftIdx - 1
            maxPeak = max(maxPeak,currentPeak)
        }
        return maxPeak
    }
}
