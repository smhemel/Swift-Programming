import Foundation
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{Int($0)! } }
func solve(i: Int, j: Int, k: Int) -> Int {
    var quo = 0, cnt  = 0
    for x in i...j {
        var num = x
        var newNum = 0
        while num != 0 {
            newNum = 10 * newNum + ( num%10 )
            num /= 10
        }
        quo = abs(x-newNum)
        if quo%k == 0 {
            cnt += 1
        }
    }
    return cnt
}
var line = inputArray()
var n = line[0]
var m = line[1]
var k = line[2]
print(solve(i: n, j: m, k: k))
