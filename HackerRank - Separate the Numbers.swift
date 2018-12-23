import Foundation

public extension String {
    func length() -> Int {
        return characters.count
    }
    func suffix(from startPos: Int) -> String {
        let startIndex = index(self.startIndex, offsetBy: startPos)
        return substring(from: startIndex)
    }
    
    func prefix(to endPos: Int) -> String {
        let endIndex = index(startIndex, offsetBy: endPos + 1)
        return substring(to: endIndex)
    }
    
    func substr(from startPos: Int, to endPos: Int) -> String {
        return suffix(from: startPos).prefix(to: endPos - startPos + 1)
    }
    
}

let n: Int = Int(readLine()!)!
for _ in 0..<n {
    let number: String = readLine()!
    let numberLength = number.length()
    if (numberLength == 1) {
        print("NO")
        continue
    }
    var isContainingSequence = true
    for startNumberSize in 1...numberLength / 2 {
        var lastNumber = Int(number.prefix(to: startNumberSize - 1))!
        var numberSuffix = number.suffix(from: startNumberSize)
        isContainingSequence = true
        while !numberSuffix.isEmpty {
            lastNumber += 1
            if (!numberSuffix.hasPrefix(String(lastNumber))) {
                isContainingSequence = false
                break
            }
            numberSuffix = numberSuffix.suffix(from: String(lastNumber).length())
        }
        if (isContainingSequence) {
            print("YES \(number.prefix(to: startNumberSize - 1))")
            break
        }
    }
    if (!isContainingSequence) {
        print("NO")
    }
}
