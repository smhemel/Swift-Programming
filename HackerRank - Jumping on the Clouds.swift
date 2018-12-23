import Foundation
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{ Int($0)! } }
var line = inputArray()
var n = line[0], k = line[1]
var arr = inputArray()
var ans = 100
for i in stride(from: 0 , to: n, by: k) {
    if arr[i] == 1 {
        ans -= 3
    }
    else {
        ans -= 1
    }
}
print(ans)
