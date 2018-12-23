import Foundation
func inputNumber() -> Int { return Int(readLine()!)! }
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{ Int($0)! } }
var line = inputArray()
var budget = line[0], n = line[1], m = line[2]
var arr = inputArray()
var brr = inputArray()
var Ans = 0
for i in 0 ..< n {
    for j in 0 ..< m {
        var total = arr[i]+brr[j]
        if total > Ans && total <= budget {
            Ans = total
        }
    }
}
Ans == 0 ? print("-1") : print(Ans)
