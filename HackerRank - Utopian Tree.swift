import Foundation
var test = Int(readLine()!)!
for _ in 0 ..< test {
    var n = Int(readLine()!)!
    var h = 1, t = 1
    while n > 0 {
        if t != 0 {
            h *= 2
            t -= 1
        }
        else {
            h += 1
            t += 1
        }
        n -= 1
    }
    print(h)
}
