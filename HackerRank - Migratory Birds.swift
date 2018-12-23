import Foundation
var n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map { Int($0)! }
var cn = [ 0, 0, 0, 0, 0, 0 , 0 ]
arr.sort()
var Max = 0, ans = 0
for i in 0 ..< n {
    var k = arr[i]
    cn[k] += 1
    if cn[k] > Max {
        Max = cn[k]
        ans = k
    }
}
print(ans)
