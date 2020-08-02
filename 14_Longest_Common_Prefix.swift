//
//  14_Longest_Common_Prefix.swift
//  Link:- https://leetcode.com/problems/longest-common-prefix/
//
//  Created by Varun Rathi on 02/08/20.
//

import Foundation

class Solution {
 func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }
        var prefix = strs[0]
        
        for i in 1..<strs.count{
            let str = strs[i]
            prefix = prefix.commonPrefix(with: str)
        }
       
       return prefix
    }
}
