import Foundation
var n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
arr.sort()
arr.reverse()
while !arr.isEmpty {
    print(arr.count)
    for j in 0 ..< arr.count {
        arr[j] -= arr[ arr.count - 1 ]
    }
    while arr.last == 0 && !arr.isEmpty {
        arr.removeLast()
    }
}
