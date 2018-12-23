import Foundation
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{ Int($0)! } }

var arr = inputArray()
var s = readLine()!
var len = s.count
var Max = 0
for c in s.unicodeScalars {
    var x = Int(c.value) - 97
    Max = Max < arr[x] ? arr[x] : Max
}
print(Max*len)

