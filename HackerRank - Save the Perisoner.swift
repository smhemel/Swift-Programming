import Foundation
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{ Int($0)! } }
var test = Int(readLine()!)!
for _ in 0 ..< test {
    var line = inputArray()
    var a = line[0], b = line[1], c = line[2]
    var ans = ( (b-1) + (c-1) ) % a + 1
    print(ans)
}
