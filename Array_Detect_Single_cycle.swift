//
//  Array_Detect_Single_cycle.swift
//
//https://www.geeksforgeeks.org/check-loop-array-according-given-constraints/
// Time : O(N) , Space:  O(1)
//  Created by Varun Rathi on 11/06/20.
//

import Foundation



class Program {
  func hasSingleCycle(array: [Int]) -> Bool {
    // Write your code here.
          var input = array
          var current = 0
          var visitedNodes = 0
          while visitedNodes < input.count {
               if      current == 0 ,  visitedNodes > 0 {
                    return false
               }
               
               visitedNodes += 1
               current = getNextIndex(&input,current)
          }
    return current == 0
  }
     
     func getNextIndex(_ array:inout [Int],_ current:Int)->Int {
          let jump = array[current]
          var nextIndex = (jump + current) % array.count
          if nextIndex < 0 {
                   nextIndex += array.count
          }
          return nextIndex
     }
   
   //Utility method for testing edge cases call it using Program().test()
   func test(){
       let testSuite:[([Int],Bool)] = [([10, 11, -6, -23, -2, 3, 88, 909, -26],false),
                                       ([1, -1, 1, -1],false),
                                       ([2, 3, 1, -4, -4, 2],true),
                                       ([2, 2, 2],true)]
       
       for testcase in testSuite {
           let r = hasSingleCycle(array: testcase.0)
           assert(r == testcase.1, "Test failed for input:\(testcase.0) : expected:\(testcase.1)")
       }
       
   }
}
