//
//  CaesarCipher.swift
//  LHWCipher
//
//  Created by Hanguang on 24/04/2017.
//  Copyright © 2017 Hanguang. All rights reserved.
//

import Foundation

let LatinAlphabet: [String] = (65..<(65+26)).map({String(UnicodeScalar($0))})

public class CaesarCipher {
    public class func encryptText(_ text: String, _ offset: Int) -> String {
        guard text.characters.count > 0 && offset >= 0 else { return "" }
        let ws = text.trimmingCharacters(in: CharacterSet.whitespaces).components(separatedBy: " ") as [String]
        
        var ret = [String]()
        for w in ws {
            var nw: [String] = []
            for c in w.uppercased().characters {
                if let i = LatinAlphabet.index(of: String(c)) {
                    nw.append(LatinAlphabet[(i + offset) % 26])
                }
            }
            ret.append(nw.joined())
        }
        
        if ret.count > 0 {
            return ret.joined(separator: " ")
        }
        
        return ""
    }
    
    public class func decryptText(_ text: String, _ offset: Int) -> String {
        guard text.characters.count > 0 && offset >= 0 else { return "" }
        let ws = text.trimmingCharacters(in: CharacterSet.whitespaces).components(separatedBy: " ") as [String]
        
        var ret = [String]()
        for w in ws {
            var nw: [String] = []
            for c in w.uppercased().characters {
                if let i = LatinAlphabet.index(of: String(c)) {
                    nw.append(LatinAlphabet[((i - offset) + 26) % 26])
                }
            }
            ret.append(nw.joined())
        }
        
        if ret.count > 0 {
            return ret.joined(separator: " ")
        }
        
        return ""
    }
}
