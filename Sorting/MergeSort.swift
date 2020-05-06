//
//  MergeSort.swift
//  
//
//  Created by Varun Rathi on 07/05/20.
//

import Foundation


class MergeSort{
    
    func merge(left: [Int], right:[Int]) ->[Int]{
        var mergedArray:[Int] = []
        var i = 0
        var j = 0
        while i < left.count && j < right.count {
            
            let leftE = left[i]
            let rightE = right[j]
            if leftE < rightE {
                mergedArray.append(leftE)
                i += 1
            }
            else if leftE > rightE{
                mergedArray.append(rightE)
                j += 1
            }
            else {
                mergedArray.append(leftE)
                i += 1
                mergedArray.append(rightE)
                j += 1
            }
        }
        
        while i < left.count {
            mergedArray.append(left[i])
            i += 1
        }
        
        while j < right.count {
           mergedArray.append(right[j])
            j += 1
        }
        
        return mergedArray
    }

        
    func mergeSort(_ input:inout [Int]){
        let start  = 0
        let end = input.count
        
        guard  input.count > 1  else {
            return
        }
        let mid = (input.count)/2
        let leftArr =  Array(mergeSort(input[0..<mid]))
        let rightArr = Array(mergeSort(input[mid ..< end]))
        merge(left: leftArr, right: rightArr)
    }
    
    func test(){
        var input =  [1,5,2,7,99,7]
        mergeSort(input)
    }
}
