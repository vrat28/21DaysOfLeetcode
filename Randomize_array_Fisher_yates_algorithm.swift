//
//  Randomize_array_Fisher_yates_algorithm.swift
// https://www.geeksforgeeks.org/shuffle-a-given-array-using-fisher-yates-shuffle-algorithm/
//
//  Created by Varun Rathi on 14/09/20.
//

import Foundation
func randomize<T:Comparable>(_ arr:[T] , randomBlock: (ClosedRange<Int>) -> Int) -> [T]{
    var input = arr
    for i in stride(from: arr.count - 1, through: 0, by: -1) {
        let randomIndex = randomBlock(0...i)
        (input[i],input[randomIndex]) = (input[randomIndex], input[i])
    }
    
    return input
}
