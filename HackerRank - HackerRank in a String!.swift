import Foundation
var test = Int(readLine()!)!
for _ in 0 ..< test {
    var f: Bool = false
    var s = readLine()!
    var str: String = "hackerrank"
    var i = 0
    for c in s {
        if c == str[str.index(str.startIndex, offsetBy: i)] {
            i += 1
        }
        if i == 10 {
            f = true
            print("YES")
            break
        }
    }
    if !f {
        print("NO")
    }
}
