import Foundation

let n = Int(readLine()!)!
let Arr = readLine()!.characters.split(separator:" ").map({ Int(String($0))! })
var min = 0, max = 0, bC = 0, wC = 0
for (i, e) in Arr.enumerated()
{
    if i != 0
    {
        if e > max
        {
            max = e
            bC += 1
        }
        else if e < min
        {
            min = e
            wC += 1
        }
    }
    else
    {
        min = e
        max = e
    }
}

print("\(bC) \(wC)")
