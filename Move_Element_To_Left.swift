//
//  Move_Element_To_Left.swift

//  You are given an array of integer and an integer. Write a function that moves all instances of taht interest in the array to the send of the array and return the array

//MARK: Input
// array = [1,2,4,5,6,10,2,4,2]
//toMove = 2

//MARK: Outout
// [1,4,5,6,10,4,2,2,2]

//
//  Created by Varun Rathi on 18/04/20.
//

//MARK:- Solution

import Foundation

class Program {
    func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
        var high = array.count - 1
        var low = 0
        while low < high {
            
            while  array[high] == toMove, low < high {
                high -= 1
            }
            
            if array[low] == toMove {
                
                (array[low], array[high]) = (array[high],array[low])
            }
            
            low += 1
        }
        return array
    }
}

