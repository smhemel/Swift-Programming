import Foundation
func inputInt() -> Int { return Int(readLine()!)! }
func catAndMouse(x: Int , y: Int, z: Int) -> String {
    if abs(x-z) < abs(y-z) {
        return "Cat A"
    }
    else if abs(x-z) > abs(y-z) {
        return "Cat B"
    }
    else {
        return "Mouse C"
    }
}

let test = inputInt()
for i in 0 ..< test {
    var line = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    var a = line[0]
    var b = line[1]
    var c = line[2]
    print(catAndMouse(x: a, y: b, z: c))
}
