//
//  1290-Linked_List_Add_Binary.swift
//  Link:- https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/
//  Compexity:- Time = O(*N*), Space = O(1)
//  Created by Varun Rathi on 10/08/20.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class LinkedList {
    
    func getDecimalValue(_ head: ListNode?) -> Int {
        guard let head = head else { return -1 }
        var length:Double = 0
        var current:ListNode? = head
        while current != nil {
              current = current!.next
              length += 1
        }
    
        var sum = 0
        current = head
        while current != nil {
             sum += current!.val * Int(pow(2.0,length - 1))
             length -= 1
             current = current!.next
        }
        
        return sum
    }
}

/*
Input: head = [1,0,1]
Output: 5
Explanation: (101) in base 2 = (5) in base 10
 */
