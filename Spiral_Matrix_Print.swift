//
//  Spiral_Matrix_Print.swift
/*

Print 2d array in spiral order.
MARK:- Input :

    1 2 3 4
    5 6 7 8
    9 10 11 12
    13 14 15 16
    
MARK:- Output
[1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]

 */

//  Created by Varun Rathi on 18/04/20.
//

import Foundation




class Program_Spiral_Matrix {
    func spiralTraverse(array: [[Int]]) -> [Int] {
        // Write your code here.
        var row_l = 0, row_h = array.count - 1, col_l = 0, col_h = array[0].count - 1
        var current_row = 0
        var current_col = 0
        var dir = 0
        var result = [Int]()
        
        while col_l <= col_h && row_l <= row_h {
            result.append(array[current_row][current_col])
            switch dir {
            case 0 :
                current_col += 1
                
            case 1 :
                current_row += 1
                
            case 2:
                current_col -= 1
                
            case 3:
                current_row -= 1
                
            default:
                break;
            }
            
            if dir == 0 && current_col > col_h {
                row_l += 1
                dir = 1
                current_col = col_h
                current_row += 1
            }
            else if dir == 1 && current_row  > row_h {
                dir = 2
                col_h -= 1
                current_row = row_h
                current_col -= 1
            }
            else if dir == 2 && current_col < col_l {
                dir = 3
                row_h -= 1
                current_col = col_l
                current_row -= 1
            }
                
            else if dir == 3 && current_row < row_l {
                dir = 0
                col_l += 1
                current_row = row_l
                current_col +=  1
            }
        }
        
        return result
    }
    
    func test() {
        let input = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
        let result = self.spiralTraverse(array: input)
        print(result)
    }
}
