//
//  SieveOfErathosthenesswift.swift
//  
//
//  Created by Varun Rathi on 10/06/20.
//

import Foundation

func generatePrime(_ n:Int){
    
    var nums:[Bool] = Array(repeating: true, count: n+1)
    var i = 2
    while i * i <= n {
        if nums[i]{
            for j in stride(from: i*i, through: n, by: i) {
                nums[j] = false
            }
        }
        i += 1
    }
    
    for i in 2...30 {
        if nums[i] {
            print("\(i)")
        }
    }
    
}
