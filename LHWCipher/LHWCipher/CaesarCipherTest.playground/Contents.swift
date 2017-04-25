//: Playground - noun: a place where people can play

import UIKit

let text = "Hello World"
let encryptedText = CaesarCipher.encryptText(text, 5)
let decryptedText = CaesarCipher.decryptText(encryptedText, 5)
