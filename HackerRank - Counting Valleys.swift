import Foundation

func inputInt() -> Int { return Int(readLine()!)! }
func inputString() -> String { return readLine()! }

var n = inputInt()
var s = inputString()
var x = 0, ans = 0
for c in s {
    if c == "U" {
        x += 1
        if x==0 {
            ans += 1
        }
    }
    else if c == "D" {
        x -= 1
    }
}
print(ans)
