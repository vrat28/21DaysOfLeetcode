//
//  Binary_Tree_Paths.swift
//  Link:- https://leetcode.com/problems/binary-tree-paths/
//
//  Created by Varun Rathi on 27/07/20.
//

import Foundation

class BinaryTreePaths {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var output:[String] = []
         guard let root = root else { return []}
        getPath(root, currentPath:"", output: &output)
        return output
    }
    
    func getPath(_ root:TreeNode?,currentPath:String,output:inout [String]) {
        guard let root = root else { return  }
        var currentPath =  currentPath
        if currentPath.count > 0 {
             currentPath += "->\(root.val)"
        }
        else {
            currentPath += "\(root.val)"
        }
       
        if root.left == nil , root.right == nil {
            output.append(currentPath)
            return
        }
        getPath(root.left,currentPath:currentPath, output: &output)
        getPath(root.right,currentPath:currentPath, output: &output)
    }
}
