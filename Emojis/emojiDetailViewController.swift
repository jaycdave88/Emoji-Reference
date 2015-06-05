//
//  emojiDetailViewController.swift
//  Emojis
//
//  Created by DEV MODE on 6/5/15.
//  Copyright (c) 2015 DEV MODE. All rights reserved.
//

import Foundation
import UIKit   

class emojiDetailViewController :UIViewController {
    
    @IBOutlet weak var emoji: UILabel!
    
    var e = "❤️"
    
    override func viewDidLoad() {
        self.emoji.text = self.e
        
        
    }
    
}