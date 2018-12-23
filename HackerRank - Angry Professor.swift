import Foundation
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map { Int($0)! } }
var test = Int(readLine()!)!
for _ in 0 ..< test {
    var line = inputArray()
    var n = line[0]
    var m = line[1]
    var arr = inputArray()
    let ans = arr.filter({ (x: Int) -> Bool in
        return x <= 0
    }).count
    
    print(ans < m ? "YES" : "NO")
}

