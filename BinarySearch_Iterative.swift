//
//  BinarySearch_Iterative.swift
//  
//
//  Created by Varun Rathi on 12/05/20.
//

import Foundation

class BinarySearch_Iterative {
    func binarySearch(input: [Int], x: Int) -> Bool {
        guard  input.count > 0 else { return false }
        
        var l = 0 , r = input.count - 1
        while l < r {
            let m = (l + r)/2
            if input[m]  == x {
                return true
            }
            else if input[m] > x {
                r = m - 1
            }
            else {
                l = m + 1
            }
        }
        return false
    }
    
    func test(){
        let input = [0,1,2,3,4,5,6]
        let r = binarySearch(input: input, x: -1)
        print(r)
    }
}
