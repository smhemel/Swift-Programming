let length = Int(readLine()!)!
let string = readLine()!
let stringArray = Array(string)
var maxLength = 0

func uniqueLettersOf(word: String) -> [Character] {
    let alphabetArray = Array("abcdefghijklmnopqrstuvwxyz")
    var returnArray = [Character]()
    for letter in alphabetArray {
        if word.contains(letter) {
            returnArray.append(letter)
        }
    }
    return returnArray
}

func checkString(word: String) -> Bool {
    let stringArray = Array(word)
    var possible = true
    
    for index in 0...stringArray.count-2 {
        if stringArray[index] == stringArray[index+1] {
            possible = false
        }
    }
    return possible
}

let uniqueLetters = uniqueLettersOf(word: string)

if uniqueLetters.count > 1 {
    for i in 0...uniqueLetters.count-2 {
        var firstLetter = uniqueLetters[i]
        for j in i+1...uniqueLetters.count-1 {
            var secondLetter = uniqueLetters[j]
            var newString = stringArray.filter({$0 == firstLetter || $0 == secondLetter})
            if checkString(word: String(newString)) && newString.count > maxLength {
                maxLength = newString.count
            }
            
        }
    }
}

print(maxLength)
