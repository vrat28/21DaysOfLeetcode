//
//  Linked_List_Merge_Sorted_Lists.swift
//  Link:- https://leetcode.com/problems/merge-two-sorted-lists/
//  Compelxity:- Time = O(M+N), Space = O(M + N)
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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var p1 = l1
        var p2 = l2
        let head = ListNode(0)
        var prevNode:ListNode? = head
        
        while p1 != nil && p2 != nil {
           
            if p1!.val > p2!.val {
                prevNode!.next = p2!
                p2 = p2!.next
            }
            else {
                   prevNode!.next = p1!
                   p1 = p1!.next
            }
            prevNode = prevNode!.next
        }
        
        if p1 == nil {
            prevNode!.next = p2
        }
        else {
            prevNode!.next = p1
        }
        return head.next
    }
}
