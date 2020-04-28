//
//  GroupAnagram.swift
// Problem : Grouping Anagrams
// Link : https://leetcode.com/problems/group-anagrams/
/*
 Given an array of strings, group anagrams together.

 Example:

 Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
 Output:
 [
   ["ate","eat","tea"],
   ["nat","tan"],
   ["bat"]
 ]
 Note:

 All inputs will be in lowercase.
 The order of your output does not matter.
 */
//  Created by Varun Rathi on 29/04/20.
//

import Foundation

class GroupAnagramsSolution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

        var map = [String : [String]]()
        var output = [[String]]()
        for word in strs {
        
            let key =  String(word.sorted())
            if map[key] != nil {
                map[key]!.append(word)
            }
            else {
                map[key] = [word]
            }
        }
        
        for keys in map.keys {
            output.append(map[keys]!)
        }
        return output
    }
}
