//
//  58-Length_Last_Word.swift
//  Link-  https://leetcode.com/problems/length-of-last-word/
//  Complexity: Time = O(N), Space = O(1)
//  Created by Varun Rathi on 23/08/20.
//

/*
Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word (last word means the last appearing word if we loop from left to right) in the string.

If the last word does not exist, return 0.

Note: A word is defined as a maximal substring consisting of non-space characters only.
 */

import Foundation

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let strArr = Array(s)
        var length = 0, i = 0
        let n = s.count
        while i < n {
            if strArr[i] != " "{
                   length += 1
                    i += 1
            }
            else {
                while i < n, strArr[i] == " "{
                    i += 1
                }
                
                if i == n {
                     return length
                }
                else {
                   length = 0
                }
            }
        }
        
      return length
    }
}

/*
Example:

Input: "Hello World"
Output: 5
 */
