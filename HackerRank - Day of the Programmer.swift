import Foundation

func inputIntNumber() -> Int { return Int(readLine()!)! }
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{ Int($0)! } }

var n = inputIntNumber()
if n<1918 {
    if n%4 == 0 {
        print("12.09.\(n)")
    }
    else {
        print("13.09.\(n)")
    }
}
else if n == 1918 {
    print("26.09.\(n)")
}
else {
    if n%400 == 0 || ( n%4 == 0 && n%100 != 0) {
        print("12.09.\(n)")
    }
    else {
        print("13.09.\(n)")
    }
}
