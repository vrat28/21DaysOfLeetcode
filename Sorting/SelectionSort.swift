//
//  SelectionSort.swift
//  
//
//  Created by Varun Rathi on 07/05/20.
//

import UIKit

class SelectionSort{
    func selectionSort<T:Comparable>(_ arrr:inout [T]){
        for i in stride(from: 0, to: arrr.count - 1, by: 1) {
            var min = arrr[i]
            var minIndex = i
            for j in stride(from: i+1, through: arrr.count - 1, by: 1){
                if arrr[j] < min {
                    min = arrr[j]
                    minIndex = j
                }
            }
            (arrr[i], arrr[minIndex]) = (arrr[minIndex],arrr[i] )
        }
    }
    
    // Call this method to execute stub suite
    func test(){
        var inputSelection = [100,20,40,1,8,3,5,9,2,16]
        selectionSort(&inputSelection)
        print(inputSelection)
    }
}
