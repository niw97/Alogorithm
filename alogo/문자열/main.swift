import Foundation

func solution(_ s:String) -> Int {
    let digitNames = ["zero":"0", "one":"1", "two":"2", "three":"3", "four":"4", "five":"5", "six":"6",
                   "seven":"7", "eight":"8", "nine": "9"]
    
    var result: String = "" // 결과
    var currentCharacter: String = "" // 한 문자씩 읽는 문자
    for str in s {
        if str.isNumber {
            result += String(str)
        } else {
            currentCharacter += String(str)
            if let digit: String = digitNames[currentCharacter] {
                result += digit
                currentCharacter = ""
            }
        }
    }
    if let resultInt = Int(result) { // optional wrapping
        return resultInt
    } else {
        return -1
    }
}
