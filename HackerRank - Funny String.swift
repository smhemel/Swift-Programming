import Foundation
var test = Int(readLine()!)!
for _ in 0 ..< test {
    var s = readLine()!
    var arr = [Int]()
    var weightChar = [Character: Int]()
    var j: Int = 0
    for code in s.utf8 {
        arr.append(Int(code))
        weightChar[Character(UnicodeScalar(Int(code))!)] = Int(code)
        j += 1
    }
    var start = arr.count
    var f: Bool = true
    var reverseArr = [Int]()
    var i = start - 1
    while i > -1 {
        var index = s.index(s.startIndex, offsetBy: i)
        reverseArr.append(weightChar[s[index]]!)
        i -= 1
    }
    for i in 1 ..< start {
        if abs(arr[i-1]-arr[i]) != abs(reverseArr[i-1]-reverseArr[i]) {
            print("Not Funny")
            f = false
            break
        }
    }
    if f {
        print("Funny")
    }
}
