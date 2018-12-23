import Foundation
func inputIntNumber() -> Int { return Int(readLine()!)! }
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{ Int($0)! } }

var line = inputArray()
var n = line[0], k = line[1]
var arr = inputArray()
var x = inputIntNumber()
var total = arr.reduce(0, +)
//for i in 0 ..< n {
//    total += arr[i]
//}
total = (total-arr[k])/2
var dif = x-total
if x > total {
    print(dif)
}
else {
    print("Bon Appetit")
}



