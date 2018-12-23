import Foundation
let n = Int(readLine()!)!
var v = readLine()!.components(separatedBy: " ").map{Int($0)!}
v.insert(0, at: 0)
for i in 1...n {
    let py = v.index(of: i)
    let ans = v.index(of: py!)!
    print(ans)
}
