import Foundation
func inputNumber() -> Int { return Int(readLine()!)! }
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{ Int($0)! } }

var n = inputNumber()
var arr = inputArray()
var cnt = [Int](repeating: 0, count: 1000)
var someSet = Set<Int>()
var ans = 0
for i in 0 ..< n {
    someSet.insert(arr[i])
    cnt[arr[i]] += 1
}
for c in someSet {
    ans += cnt[c]/2
}
print(ans)
