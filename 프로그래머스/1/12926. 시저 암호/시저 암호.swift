import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var result = ""

    for char in s {
        if let scalar = UnicodeScalar(String(char)) {
            if char.isLetter {  // 문자가 알파벳인 경우에만 처리
                var offset = n
                var newScalarValue = scalar.value + UInt32(offset)
                // 알파벳 범위를 넘어갈 때 다시 a부터 돌기
                if char.isLowercase && newScalarValue > UnicodeScalar("z").value {
                    newScalarValue -= 26
                } else if char.isUppercase && newScalarValue > UnicodeScalar("Z").value {
                    newScalarValue -= 26
                }
                let nextScalar = UnicodeScalar(newScalarValue)!
                let nextCharacter = Character(nextScalar)
                result.append(nextCharacter)
            } else {
                // 알파벳이 아닌 경우 그대로 추가
                result.append(char)
            }
        }
    }
    return result
}