import UIKit

class TransportationProblem {
    
    func binarySearch(_ input:[Int],_ k:Int)->Int{
        
        var maxE = Int.min, sum = 0
        for element in input{
            sum += element
            maxE = max(maxE, element)
        }
        var left = maxE, right = sum
        
     //   print("left \(left), right :\(right)")
        var minElement = Int.max
        while left <= right {
            let mid = (left + right )/2
           
            let no_of_rides = get_ride_count(mid, input)
          //  print("no = \(no_of_rides) for mid = \(mid)")
            if no_of_rides > k {
                left = mid + 1
            }
            else {
                right = mid - 1
                minElement = mid
            }
            
        }

        return minElement
    }
    
    func get_ride_count(_ n :Int,_ input:[Int]) -> Int{
        var count = 1
        var currentSum = 0
        for e in input {
            
            if currentSum + e <= n {
                currentSum += e
            }
            else {
                currentSum = e
                count += 1
            }
        }
        return count
    }
    
    func test(){
        let i = [7,3,2,3,1,4]
        let r = binarySearch(i, 3)
        print(r)
    }
    
}

TransportationProblem().test()

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var count = 0
        
        for num in nums {
            let digitCount = getNumberOfDigits(num)
            if digitCount % 2 == 0 {
                    count += 1
            }
        }
        return count
    }
    
    func getNumberOfDigits(_ num:Int)->Int{
        var count = 0
        switch num {
        case 0..<10:
            count = 1
        case 10..<100:
            count = 2
            
        case 100..<1000:
            count = 3
            
        case 1000..<10000:
            count = 4
            
        case 10000..<100000:
            count = 5
        default:
            count = 0
        }
        return count
    }
}
var a = [11,111,11111,4]


let sol = Solution()

sol.findNumbers(a)
sol.getNumberOfDigits(1)
sol.getNumberOfDigits(11)
sol.getNumberOfDigits(111)
sol.getNumberOfDigits(11111)
sol.getNumberOfDigits(4)

Solution.init().findNumbers(a)



let q = DispatchQueue.global(qos: .background)
//q.async {
//    let queue = DispatchQueue(label: "abc")
//    queue.sync {
//        print("A")
//        queue.sync {
//            print("B")
//            queue.async {
//                print("C")
//                queue.async {
//                    print("D")
//                }
//            }
//            print("E")
//        }
//    }
//}
//
DispatchQueue.global().sync {
    print("1")
        DispatchQueue.global().async {
        print("2")
}
    print("3")
}

print("4")



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

/// 9,5,7,10,13,4,12,8
let r  = findLengthOfValidPivotSubArr([8,9,7,10,5,4,12,13])
let r1  = findLengthOfValidPivotSubArr([4,5,7,10,8,9,12,13])
print(r)
print(r1)


func longestConsecutiveSubarray(_ input:[Int]) -> Int{
    guard input.count > 0 else { return 0}
    guard input.count > 1 else {
    return input[0]
}

    var max_length = 0
    var current = 1
    
    for i in 1..<input.count {
        if input[i] > input[i-1]{
            current += 1
           
        }
        else {
            current = 1
        }
         max_length = max(max_length, current)
    }
    return max_length
}

longestConsecutiveSubarray([8, 9 ,10 , 12, 13,4 ,5 ,7,10,11,12,23,24,25,26])

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
    



