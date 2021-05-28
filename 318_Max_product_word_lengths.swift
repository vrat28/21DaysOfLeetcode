/*
 Link: https://leetcode.com/explore/challenge/card/may-leetcoding-challenge-2021/601/week-4-may-22nd-may-28th/3757/
 
 Problem : Given a string array words, return the maximum value of length(word[i]) * length(word[j]) where the two words do not share common letters. If no such two words exist, return 0.
 
 Complexity:
 Time = O(N^2 + L), Where L is the total length of words
 Space = O(N)
 */
class Solution {
    func maxProduct(_ words: [String]) -> Int {
        var maxLength = 0
        var bitMap = [Int:Int]()
        for word in words{
            let bitMask = getBitMask(word)
            // Multiple words can have same bitmasks (a , aaaaaa).
            // We need to keep the max length only
            if let currentLength = bitMap[bitMask] {
                bitMap[bitMask] = max(currentLength, word.count)
            }
            else{
                 bitMap[bitMask] = word.count
            }
        }
        
        for i in bitMap.keys{
            for j in bitMap.keys{
                if i & j == 0 {
                    maxLength = max(maxLength, bitMap[i]!*bitMap[j]!)
                }
            }
        }
        return maxLength
    }
    
    func getBitMask(_ str:String) -> Int {
       var bitMask = 0
        for char in str{
            let maskOffset = getAsciiOffset(char)
            bitMask |= 1 << maskOffset
        }
        return bitMask
    }

    func getAsciiOffset(_ char:Character) -> Int{
        return Int(char.asciiValue!) - 97
    }
}
