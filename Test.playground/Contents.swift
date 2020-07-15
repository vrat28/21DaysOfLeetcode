import UIKit


extension String {

 func stringAt(_ i: Int) -> String {
   return String(Array(self)[i])
 }
 }
class Program {

    func levenshteinDistance(firstString: String, secondString: String) -> Int {
        // Write your code here.
        var dp = [[Int]]()
       // dp.reserveCapacity(firstString.count)
        for i in 0..<firstString.count + 1 {
            var row = [Int]()
        //    row.reserveCapacity(secondString.count)
            for j in 0..<secondString.count + 1{
                row.append(j)
            }
            row[0] = i
            dp.append(row)
        }
        
        
        
        for i in 1..<firstString.count + 1 {
            for j in 1..<secondString.count + 1{
								 let firstIndex = firstString.index(firstString.startIndex, offsetBy: i - 1)
                let secondIndex = secondString.index(secondString.startIndex, offsetBy: j - 1)
                if firstString[firstIndex] == secondString[secondIndex] {
                    dp[i][j] = dp[i - 1][j - 1]
                }
                else {
                    dp[i][j] = 1 + min(dp[i][j-1], min(dp[i-1][j-1], dp[i-1][j]))
                }
            }
        }
        return dp[firstString.count][secondString.count]
    }
}

Program().levenshteinDistance(firstString: "abc", secondString: "abv")

var str = "Hello, playground"
func binarySearch(_ input:[Int], _ key: Int)->Int {
    guard !input.isEmpty else { return -1}
    var low = 0
    var high = input.count - 1
    
    while low <= high {
        let mid = (low + high)/2
        
        if input[mid] == key {
            return mid
        }
        else if input[mid] > key {
            high = mid - 1
        }
        else {
            low = mid + 1
        }
    }
    return -1
}

func findLengthOfValidPivotSubArr(_ input: [Int]) -> [Int] {
    let sortedArary  = input.sorted()
   
    var count = 0
    var output = [Int]()
    for i in 0..<input.count {
        let positionInSortedArr = binarySearch(sortedArary, input[i])
        if i == positionInSortedArr {
            count += 1
            output.append(input[i])
        }
    }
    return output
}


let r  = findLengthOfValidPivotSubArr([8,9,7,10,5,4,12,13])
let r1  = findLengthOfValidPivotSubArr([4,5,7,10,8,9,12,13])
print(r)
print(r1)
      // Sorted : 4 ,5 ,7 ,8, 9 ,10 , 12, 13
        // 8 9 7 10 5 4 12 13
        //
        // 1 2 3 4 5
        // 34512
        // Stack = [10]
        //
        
        // Find count, no of elements < i
    
        // if i === count
        // add input[i] to the output arr
    



