import Foundation

public class CaesarCipher {
    public class func encryptText(_ text: String, _ offset: Int) -> String {
        return text.uppercased().unicodeScalars.map { c->String in
            let code=Int(c.value)-65
            let isAlpha = code>=0 && code<26
            if isAlpha {
                let shiftedCode = (code+offset+26)%26+65
                return String(UnicodeScalar(shiftedCode)!)
            } else {
                return String(c)
            }
            
        }.joined()
    }
    
    public class func decryptText(_ text: String, _ offset: Int) -> String {
        
        return CaesarCipher.encryptText(text, -offset)
    }
}
