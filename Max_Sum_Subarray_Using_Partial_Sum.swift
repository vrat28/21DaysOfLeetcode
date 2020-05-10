//
//  Max_Sum_Subarray_Using_Partial_Sum.swift
//  
//
//  Created by Varun Rathi on 11/05/20.
//

import Foundation

class MaxSumSubArray_Partial_Sum {
    func maxSum(a:[Int]) -> Int{
        var sumArr = [Int]()
        sumArr.append(a[0])
        
        var s = 0
        for i in 0..<a.count {
            s =  a[i] + s
            sumArr.append(s)
        }
        var answer  = sumArr[0]
        var minLeftSum = 0
        
        for i in 1..<sumArr.count {
            answer = max(answer, sumArr[i] - minLeftSum)
            minLeftSum = min(minLeftSum, sumArr[i])
        }
        
        return answer
    }
    
    static func test(){
        let input = [121,-40,6,7,-3,-20,-10]
        let c = MaxSumSubArray_Partial_Sum().maxSum(a: input)
        print(c)
    }
}
