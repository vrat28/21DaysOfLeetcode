//
//  83-Linked_List_remove_duplicates_Sorted.swift
//  Link :- https://leetcode.com/problems/remove-duplicates-from-sorted-list/
//  Complexity :- Time = O(), Space = O(1)
//  Created by Varun Rathi on 02/08/20.
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
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        guard let  head = head else { return nil}
        var tail = head.next
        var  start = head
        while let tailPtr = tail {
            if tailPtr.val == start.val {
                 start.next = tailPtr.next
                 tail = tail!.next
            }
            else {
                   start = tail!
                  tail = tail!.next
            }
            
        }

        return head
    }
}
