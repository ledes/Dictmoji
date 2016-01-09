//
//  EmojiDetailViewController.swift
//  Dictmoji
//
//  Created by Pablo on 1/9/16.
//  Copyright © 2016 Pablo Ledesma. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
 
    @IBOutlet weak var EmojiLabel: UILabel!
    
    var emoji = "👽"
    
    override func viewDidLoad() {
        self.EmojiLabel.text = self.emoji

    }
}