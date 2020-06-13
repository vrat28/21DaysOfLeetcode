//
//  Majority_element_voting_algorithm.swift
//  Link: https://www.geeksforgeeks.org/majority-element/
//  Complexity: Time = O(n) , Space = O(1)
//
//  Created by Varun Rathi on 13/06/20.
//

import Foundation

class BoyerMooreVotingAlgorithm {
    
    func findMajorityElement(_ input:[Int]) -> Int {
        var maxElement = 0
        var count = 0
        
        // Iteration 1 : find max frequency element
        for num in input {
            if num == maxElement {
                count += 1
            }
            else if count == 0 {
                count = 1
                maxElement = num
            }
            else {
                count -= 1
            }
        }
        // Iteration 2 : Validate count
        count = 0
        for num in input {
            if num == maxElement {
                count += 1
            }
        }
        return count > input.count/2 ? maxElement : -1
    }
}
 
