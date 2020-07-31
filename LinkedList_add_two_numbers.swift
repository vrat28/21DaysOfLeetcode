//
//  LinkedList_add_two_numbers.swift
//  Link:- https://leetcode.com/problems/add-two-numbers/
//  Complexity : Time = O (*M* + *N*) , Space = O(M + N) ; M : length of List1 , N : length of list 2
//  Created by Varun Rathi on 31/07/20.
//

import Foundation

class LinkedList {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

    
        let head = ListNode(-1)
        var start: ListNode?
        
        var curr1 = l1
        var curr2 = l2
        var carry = 0
        
        while curr1 != nil ||  curr2 != nil{
               let value1 = curr1?.val ?? 0
                let value2 = curr2?.val ?? 0
               let val =  value1 +  value2 + carry
                let nodeToInsert = ListNode(val % 10)
               if start == nil {
                    start = nodeToInsert
                    head.next = start
               }
                else {
                        start?.next = nodeToInsert
                        start = start?.next
                }
            
                carry = val > 9 ? 1 : 0
               curr1 = curr1?.next
               curr2 = curr2?.next
        }
        
        if carry > 0 {
                start?.next = ListNode(carry)
        }
        return head.next
    }
    

}
