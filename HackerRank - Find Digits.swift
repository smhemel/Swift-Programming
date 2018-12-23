import Foundation
var test = Int(readLine()!)!
for _ in 0 ..< test {
    var n = Int(readLine()!)!
    var cnt = 0, r = n
    while r > 0 {
        if r % 10 != 0 && n % (r%10) == 0 {
            cnt += 1
        }
        r /= 10
    }
    print(cnt)
}
