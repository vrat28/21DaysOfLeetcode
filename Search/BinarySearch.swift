//
//  BinarySearch.swift
//  
//
//  Created by Varun Rathi on 12/05/20.
//

import Foundation


class BinarySearch {
    
    func search(arr:[Int], x : Int,  l: Int, r:Int) ->Int{
        
        //Base case
        if l > r {
            return -1
        }
        
        let m = (l + r)/2
        if arr[m] == x {
            return m
        }
        else if arr[m] > x {
          return  search(arr: arr, x: x, l: l, r: m - 1)
        }
        else {
          return  search(arr: arr, x: x, l: m + 1, r: r)
        }
    }
    
    func test(){
    
        var testSuites  = [([Int],Int,Int)]() // (Input arr, X, expected result)
        let input = [1,2,4,6,7,8,9]
        let r = input.count - 1
        testSuites.append((input,4,2))
        testSuites.append((input,0,-1))
        testSuites.append((input,1,0))
        testSuites.append((input,6,3))
        testSuites.append((input,10,1))
        
        for testTuple in testSuites {
            let r = search(arr: testTuple.0, x: testTuple.1, l: 0, r:r)
            assert(r == testTuple.2, "Testcase failed. Input :\(testTuple.0) x: \(testTuple.1)")
        }
    }
    
}
