import Foundation
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map { Int($0)! } }
func solve(n: Int, k: Int, ar: [Int] ) -> Int {
    var b = 0
    for i in 0 ..< n {
        if b<ar[i] {
            b = ar[i]
        }
    }
    if b>k {
        return (n-k)
    }
    else {
        return 0
    }
}
var line = inputArray()
var n = line[0]
var m = line[1]
var arr = inputArray()
print(solve(n: n, k: m, ar: arr))
