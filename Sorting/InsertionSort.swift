//
//  InsertionSort.swift
//  
//
//  Created by Varun Rathi on 13/05/20.
//

import Foundation

class InsertionSort {
    func sort(_ a: [Int])-> [Int] {
       if  a.count <= 1 {
            return a
        }
        var array = a
        for i in 1..<array.count {
            let temp = array[i]
            var j = i - 1
    
            while  j >= 0 , array[j] > temp  {
                array[j+1] = array[j]
                 j -= 1
            }
            array[j+1] = temp
        }
        return array
    }
    
    func test() {
        let input = [9,6,5,4,3,2,1]
        let sorted = sort(input)
        print(sorted)
    }
}
