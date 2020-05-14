/*:
# Array Cyclic rotate
## https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
*/

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {

    if A.isEmpty {
        return A
    }

    for _ in 0..<K{
        rotateByOne(&A)
    }
    return A
}

public func rotateByOne(_ A:inout [Int]){
   
    let length = A.count
     let temp = A[length - 1]
    for i in stride(from: length - 1, to: 0, by: -1) {
        A[i] = A[i - 1]
    }
    A[0] = temp
}