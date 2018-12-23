import Foundation
var s = readLine()!
var n = Int(readLine()!)!
var ans = 0
var len = s.count
for i in 0...len-1 {
    var x = s.index(s.startIndex, offsetBy: i)
    if s[x] == "a" {
        ans += 1
    }
}
var divisions = n / len
var cnt = divisions * ans
var extra = n % len
if extra > 0 {
    for i in 0...extra {
        var x = s.index(s.startIndex, offsetBy: i)
        if s[x] == "a" {
            cnt += 1
        }
    }
}
print(cnt)
