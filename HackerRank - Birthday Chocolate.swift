import Foundation
var n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var line = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let d = line[0]
let m = line[1]

if n < m {
    print("0")
}
else {
    var result = 0
    for i in 0...(n-m) {
        var sum = 0
        for j in i...(i+m-1) {
            sum += arr[j]
        }
        if sum == d {
            result += 1
        }
    }
    
    print(result)
}

