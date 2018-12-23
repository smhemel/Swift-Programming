import Foundation
var len = Int(readLine()!)!
var s = readLine()!
var n = Int(readLine()!)!
for c in s.unicodeScalars {
    if ( c >= "A" && c <= "Z" ) {
        var x = 65 + ( Int(c.value) - 65 + n ) % 26
        
        print(Character(UnicodeScalar(x)!) , terminator: "")
    }
    else if ( c >= "a" && c <= "z" ) {
        var x = 97 + ( Int(c.value) - 97 + n ) % 26
        print(Character(UnicodeScalar(x)!) , terminator: "")
    }
    else {
        print(c, terminator: "")
    }
}
