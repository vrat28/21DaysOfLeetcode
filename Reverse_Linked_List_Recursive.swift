//
//  Reverse_Linked_List_Recursive.swift
//  Link: - https://leetcode.com/problems/reverse-linked-list
//  Complexity : Time = O(*N*) , Space = O(*N*) [recursion stack]
//  Created by Varun Rathi on 31/07/20.
//

import Foundation

class Reverse_Linked_List_Rec {
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        guard let head = head else { return nil}
        
        if head.next == nil{
                return head
        }
        
        let newHead = reverseList( head.next)
        head.next?.next = head
        head.next = nil
        return newHead
     }
}
