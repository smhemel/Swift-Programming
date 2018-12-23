import Foundation
func getLineToArrayAscii() -> [Int] {
    var result = [Int]()
    var c = getchar()
    while c != EOF && c != 10 {
        result.append(Int(c))
        c = getchar()
    }
    return result
}

let n = Int(readLine()!)!
var result = Set(getLineToArrayAscii())
for _ in 1 ..< n {
    result = result.intersection(Set(getLineToArrayAscii()))
}
print("\(result.count)")
