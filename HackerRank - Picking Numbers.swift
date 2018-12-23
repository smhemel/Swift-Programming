import Foundation
func inputNumber() -> Int { return Int(readLine()!)! }
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{ Int($0)! } }
func solve( x: Int, arr: [Int] ) -> Int {
    var brr = [Int](repeating: 0, count: 10000)
    for i in 0 ..< x {
        for j in 0 ..< x {
            var k = 2*i
            if arr[i] == arr[j] || arr[i]==arr[j]+1 {
                brr[k] += 1
            }
            if arr[i] == arr[j] || arr[i] == arr[j]-1 {
                brr[k+1] += 1
            }
        }
    }
    for i in 0 ..< 200 {
        if brr[i] > brr[0] {
            brr[0] = brr[i]
        }
    }
    return brr[0]
}

var n = inputNumber()
var ar = inputArray()
print(solve(x: n, arr: ar))
