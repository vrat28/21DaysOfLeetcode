//
//  Array_Partial_Sum.swift
//  
//
//  Created by Varun Rathi on 11/05/20.
//

import Foundation


class PartialSum {

    var arr:[Int]
    var sumArr:[Int]!
    
    init(array:[Int]) {
        self.arr = array
        build()
    }
    
    func query(_ L:Int, _ R:Int) ->Int {
         var total = sumArr[R]
         if (L > 0){
            total -= sumArr[L - 1]
        }
       return total
    }
    
    func build(){
        sumArr = [Int]()
        var sum = 0
        for i in 0..<arr.count{
            sum += arr[i]
            sumArr.append(sum)
        }
    }
    
    static func test(){
        let input = [1,2,4,5,0,8,3,11,5]
        let partialSum = PartialSum(array:input)
        let testCaseArr:[(Int,Int)] = [(1,2), (0,5),(0,3),(1,6),(2,6)]
        for testcase in testCaseArr {
            let  result = partialSum.query(testcase.0, testcase.1)
            print(result)
        }
    }
}
