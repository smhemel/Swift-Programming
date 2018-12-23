let n = Int(readLine()!)!
let p = Int(readLine()!)!

let fromBegin = p/2
let fromEnd = (n&1 == 0) ? (n-p+1)/2 : (n-p)/2

print(min(fromBegin, fromEnd))
