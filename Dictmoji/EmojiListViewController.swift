//
//  EmojiListViewController.swift
//  Dictmoji
//
//  Created by Pablo on 1/9/16.
//  Copyright © 2016 Pablo Ledesma. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["🐼", "🙊", "🐊", "🐋", "🐟", "🐌", "🐞", "🐀", "🐂", "🐅", "🐰", "🐴", "🐓", "🐥", "🐪", "🐷", "🐶"]
    var emoji = "👻"
    
    var descriptions = ["A panda", "A monkey", "An alligator", "A whale", "A fish", "A snail", "A ladybug", "A rat", " a cow", "A tigger",
    "A rabbit", "A horse", "A chicken", "A chick", "A camel", "A pig", "A dog" ]
    
    var description1 = "Emoji description"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.description1 = self.descriptions[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as! EmojiDetailViewController
        detailViewController.emoji = self.emoji
        detailViewController.description1 = self.description1
    }

}
