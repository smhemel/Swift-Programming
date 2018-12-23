import Foundation
func inputArray() -> [Int] { return readLine()!.components(separatedBy: " ").map{ Int($0)! } }
var line = inputArray()
var line1 = inputArray()
if line[2] == line1[2] || line[2] < line1[2] {
    if line[1] == line1[1] || line[1] < line1[1] {
        if line[0] == line1[0] || line[0] < line1[0] {
            print("0")
        }
        else {
            print(( line[0]-line1[0])*15)
        }
        else {
            print(( line[1]-line1[1])*500)
        }
    }
    print("10000")
}
