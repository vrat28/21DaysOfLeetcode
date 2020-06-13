//
//  Smallest_Distance.swift
//  https://www.geeksforgeeks.org/find-the-minimum-distance-between-two-numbers/
//  Time :- O(m+n) ; where m and n are size of array
//  Space : O(1)
//  Created by Varun Rathi on 13/06/20.
//

import Foundation

class SmallestDifference {
    func findSmallestDifference(arr1: inout [Int], arr2: inout [Int]) -> [Int] {
        arr1.sort(by: <)
        arr2.sort(by: <)
        
        var i = 0 , j = 0
        var minDiff = Int.max
        var min1 = 0,min2 = 0
        
        while (i < arr1.count && j < arr2.count){
            
            let localDiff = abs(arr2[j] - arr1[i])
            if localDiff < minDiff {
                minDiff = localDiff
                min1 = i
                min2 = j
            }
            
            if arr1[i] == arr2[j] {
                break
            }
            else if arr1[i] > arr2[j]{
                j += 1
            }
            else {
                i += 1
            }
        }
        return [arr1[min1],arr2[min2]]
    }
}
