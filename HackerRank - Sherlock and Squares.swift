import Foundation
var test = Int(readLine()!)!
for _ in 0 ..< test {
    var line = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    var a = line[0], b = line[1], cnt = 0, inc = 0
    for i in a...b {
        var temp = Int(sqrt(Double(i)))
        if Int(temp*temp) ==  i {
            cnt += 1
            inc += temp*2
        }
        if inc > b {
            break
        }
    }
    print(cnt)
}
