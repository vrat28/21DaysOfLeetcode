/*:

# Array unpaired element

## https://app.codility.com/programmers/lessons/1-iterations/binary_gap/

*/

public func solution2(_ A : inout [Int]) -> Int {
    
    var result = 0
    for number in A {
        result = result ^ number
    }
    return result
}
