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
    
    @IBOutlet weak var EmojiDescription: UILabel!
    
    var emoji = "👽"
    var description1 = "bla"
    
    override func viewDidLoad() {
        self.EmojiLabel.text = self.emoji
        self.EmojiDescription.text = self.description1
    }
}