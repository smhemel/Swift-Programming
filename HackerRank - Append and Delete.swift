func canReplace(s : String, t: String, k: Int) -> Bool {
    var commonStart = 0
    for i in 0...(min(s.count, t.count)-1) {
        let sChar = s[s.index(s.startIndex, offsetBy: i)]
        let tChar = t[s.index(s.startIndex, offsetBy: i)]
        if (sChar == tChar) { commonStart += 1 }
        else { break }
    }
    
    let uniqueCharactersToRemove = s.count - commonStart
    let uniqueCharactersToAdd = t.count - commonStart
    let minimumNumberOfOperations = uniqueCharactersToRemove + uniqueCharactersToAdd
    let completeReplaceOperations = s.count + t.count
    let operationsLeftAfterMinimum = k - minimumNumberOfOperations
    
    if (k < minimumNumberOfOperations) { return false }
    if (k >= completeReplaceOperations) { return true  }
    if ((operationsLeftAfterMinimum % 2) == 0) { return true }
    return false
}
let s = readLine()!
let t = readLine()!
let k = Int(readLine()!)!
let canReplaceString : String  = canReplace(s: s, t: t, k: k) ? "Yes" : "No"
print("\(canReplaceString)")

