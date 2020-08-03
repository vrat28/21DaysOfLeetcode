//
//  121-Best_Time_To_Buy_Sell_Stocks.swift
//  Link:- https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
//  Complexity:- Time = O(N), Space = O(1)
//  Created by Varun Rathi on 03/08/20.
//

/*! Statement
Say you have an array for which the ith element is the price of a given stock on day i.

If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.

Note that you cannot sell a stock before you buy one.
   
 */

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        guard  prices.count < 2 else { return 0 }
   
        var maxDiff = max(prices[1] - prices[0], 0)
        var minPrice = prices[0]
        
       for i in 1..<prices.count {
           if prices[i] - minPrice > maxDiff {
                maxDiff =   prices[i] - minPrice
           }
           
           if prices[i] < minPrice{
               minPrice = prices[i]
           }
       }
        return maxDiff
    }
}


/*

Example 1:

Input: [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
             Not 7-1 = 6, as selling price needs to be larger than buying price.
Example 2:

Input: [7,6,4,3,1]
Output: 0
Explanation: In this case, no transaction is done, i.e. max profit = 0.
 */
