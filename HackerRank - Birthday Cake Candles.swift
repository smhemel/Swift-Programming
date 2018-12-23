var n = Int(readLine()!)!
var arr = readLine()!.characters.split(separator:" ").map{Int(String($0))!}
var sum = 0
var max = 0
var count = 0
for i in 0 ..< n {
    if (arr[i] > max) {
        max = arr[i]
        count = 0
    }
    if (arr[i] == max) {
        count += 1
    }
}
