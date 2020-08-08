//
//  1528-Shufftle_String.swift
//  Link:- https://leetcode.com/problems/shuffle-string/
//  Complexity:- Time = O(*N*), Space = O(*N*) [For storing the intermediate char array]
//  Created by Varun Rathi on 09/08/20.
//

import Foundation

class ShuffleString {
    
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var charArray:[Character] = Array(repeating:"a",count:s.count)
        var arrStr = Array(s)
        
        for i in 0..<indices.count {
            let newIndex = indices[i]
            charArray[newIndex] = arrStr[i]
            
        }
        
        let reducedString = charArray.reduce("") { (result, char) -> String in
            return result + String(char)
        }
        return reducedString
    }
}
