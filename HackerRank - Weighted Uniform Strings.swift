import Foundation
var weights = [Character: Int]()
let startingValue = Int(("a" as UnicodeScalar).value)
for i in 0..<26 {
    weights[Character(UnicodeScalar(i + startingValue)!)] = i + 1
}
let string = readLine()!
var weightedUniformStrings = Set<Int>()
var previousChar: Character?
var runningCount = 0
let chars = Array(string.characters)
for i in 0..<chars.count {
    let c = chars[i]
    if let previousChar = previousChar {
        let weightSum = runningCount * weights[previousChar]!
        weightedUniformStrings.insert(weightSum)
        if previousChar != c {
            runningCount = 1
        } else {
            runningCount += 1
        }
    } else {
        runningCount += 1
    }
    previousChar = c
    
    if i == chars.count - 1 {
        let weightSum = runningCount * weights[c]!
        weightedUniformStrings.insert(weightSum)
    }
}

let numberOfQueries = Int(readLine() ?? "") ?? 0

var queries = [Int]()
for _ in 0..<numberOfQueries {
    let query = Int(readLine() ?? "") ?? 0
    queries.append(query)
}

for q in queries {
    print(weightedUniformStrings.contains(q) ? "Yes" : "No")
}
