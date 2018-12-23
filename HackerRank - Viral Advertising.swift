import Foundation
func inputNumber() -> Int { return Int(readLine()!)! }
var n = inputNumber()
var m = 5, ans = 0
for i in 0 ..< n {
    var x = m/2
    ans += x
    m = x*3
}
print(ans)
