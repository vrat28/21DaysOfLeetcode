//
//  Knapsack_01.swift
//  
//
//  Created by Varun Rathi on 28/05/20.
//

import Foundation

class Knapsack {

    func solveKnapsack(_ profits:[Int],weights:[Int], capacity:Int)->Int {
            return solveKnapsackRecursive(profits, weights: weights, capacity: capacity, current: 0)
    }
    
    func solveKnapsackRecursive(_ profits:[Int],weights:[Int], capacity:Int, current:Int)->Int {
        
        if current >= profits.count || capacity <= 0{
            return 0
        }
        
        var profitIncCurrent = 0
        if capacity >= weights[current]{
            profitIncCurrent = profits[current] + solveKnapsackRecursive(profits, weights: weights, capacity: capacity - weights[current], current: current + 1)
        }
        
        let profitExcCurrent = solveKnapsackRecursive(profits, weights: weights, capacity: capacity, current: current + 1)
        return max(profitIncCurrent, profitExcCurrent)
    }

}
