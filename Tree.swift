//
//  Tree.swift
//  
//
//  Created by Varun Rathi on 14/04/20.
//

import Foundation


class Node {
    var leftChild:Node?
    var rightChild:Node?
    var data:Int!
    
    
    init() {
        
        data = 0
        leftChild = nil
        rightChild = nil
    }
    
    init (_ value:Int){
        data = value
        leftChild = nil
        rightChild = nil
    }
}


class BST {
    
    var  root:Node?
    
    func getRoot()->Node? {
        return root
    }
    
    func insert(_ value:Int){
        
        guard let rootNode  = getRoot() else {
            root = Node(value)
            return
        }
        
        var currentNode:Node?
        var parent:Node!
        
        currentNode = rootNode
        
        while (currentNode != nil) {
            parent = currentNode
            
            if value > currentNode!.data {
                currentNode = currentNode?.rightChild
            }
            
            if value < currentNode!.data {
                currentNode = currentNode?.leftChild
            }
        }
        
        if value > parent.data {
            parent.rightChild = Node(value)
        }
        else {
            parent.leftChild = Node(value)
        }
    }
    
}

