var n = Int(readLine()!)!
var arr = readLine()!.characters.split(separator:" ").map{Int(String($0))!}
var sum = 0
for i in  0 ..< n {
    sum += arr[i]
}
print(sum)
