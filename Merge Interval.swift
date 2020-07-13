//
//  Merge Interval.swift
//  
//
//  Created by Varun Rathi on 14/07/20.
//

import UIKit

class MergeInterval {
    func getMergedInterval(_ input:[(Int,Int)]) -> [(Int,Int)] {
        var output = [(Int,Int)]()
        for i in input {
            if var lastInterval = output.popLast() {
                
                if lastInterval.1 >= i.0 {
                    lastInterval.1 = max(i.1, lastInterval.1)
                    output.append(lastInterval)
                }
                else {
                    output.append(lastInterval)
                    output.append(i)
                }
            }
            else {
                output.append((i.0,i.1))
            }
        }
        return output
    }
    
    func test(){
        let i = [(1, 5), (3, 7), (4, 6), (6, 8),(10, 12),(12, 15)]
        let r = getMergedInterval(i)
        print(r)
    }
}
