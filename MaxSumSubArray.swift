//
//  MaxSumSubArray.swift
//  
//
//  Created by Varun Rathi on 10/05/20.
//

import Foundation

class MaxSumSubArray {
    func maxSum(a:[Int]) -> Int{
        var prevSum = 0
        var currentSum = 0
        var maxSum = 0
        
        for i in 0..<a.count{
            currentSum = max(prevSum + a[i], a[i])
            maxSum = max(maxSum, currentSum)
            prevSum = currentSum
        }
        return maxSum
    }
    
    func test(){
        let input = [100,-2,4,7,-8,0,17]
        let result = maxSum(a: input)
        print(result)
    }
}
