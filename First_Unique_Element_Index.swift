//
//  First_Unique_Element_Index.swift
//   Link: -  https://leetcode.com/problems/first-unique-character-in-a-string/submissions/
//
//  Created by Varun Rathi on 05/06/20.
//

import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
    var map = [String:Int]()
    let arr = Array(s)
    
    for i in 0..<arr.count {
        
        let key = String(arr[i])
        if let value =  map[key]{
            map[key] = value + 1
        }
        else {
            map[key] = 1
        }
    }
    
    
    for i in 0..<arr.count {
        let key = String(arr[i])
        if let val =   map[key], val == 1 {
            return i
        }
    }
    return -1
}
}
