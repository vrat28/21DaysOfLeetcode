//
//  QuickSort.swift
//  
//
//  Created by Varun Rathi on 07/05/20.
//

import Foundation


class QuickSort{
    
    // generic method for swaping
    func swap<T:Comparable>(left: inout T, right: inout T){
        (left,right) = (right,left)
    }
    
    func quickSort(_ arr:inout [Int], start:Int, end:Int)->[Int] {
    
       guard start < end else {
                return arr
        }
        
        let pivot = partition(&arr, start: start, end: end)
        arr = quickSort(&arr, start: start, end: pivot - 1)
        arr = quickSort(&arr, start: pivot + 1, end: end)
        return arr
    }
    
    func partition(_ arr: inout [Int], start:Int,end:Int)->Int{
        var arr = arr
        
        var i = start
        for ii in stride(from: start + 1, through: end , by: 1) {
            if arr[ii] < arr[start]{
                 i += 1
                (arr[ii],arr[i]) = (arr[i],arr[ii])
            }
        
        }
       (arr[start], arr[i]) = (arr[i],arr[start])
        return i
    }
    
    // Call this to execute test Suite
    func test(){
        var inputArr = [4,5,1,3,0,8,11,12,7,9,6,2]
        quickSort(&inputArr, start: 0, end: inputArr.count - 1)
    }
}
