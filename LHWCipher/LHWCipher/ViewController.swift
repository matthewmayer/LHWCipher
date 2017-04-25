//
//  ViewController.swift
//  LHWCipher
//
//  Created by Hanguang on 24/04/2017.
//  Copyright © 2017 Hanguang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let text = "Hello World"
        let encryptedText = CaesarCipher.encryptText(text, 5)
        let decryptedText = CaesarCipher.decryptText(encryptedText, 5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

