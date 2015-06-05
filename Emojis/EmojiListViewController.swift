//
//  EmojiListViewController.swift
//  Emojis
//
//  Created by DEV MODE on 6/4/15.
//  Copyright (c) 2015 DEV MODE. All rights reserved.
//

import Foundation
import UIKit

class EmojiViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis=["🐙","😎","😰","🐘","🌚","👊","🌼","✌️","😄","😃","😀","😊","☺️","😉","😍","😘","😚","😗","😜","😝","😛","😳","😁","😔","😌","😞","😣","😢","😂","😭","😪","😰","😡","😈","👿"]
    
    var emoji = "💃"
    
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
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailedViewController = segue.destinationViewController as! emojiDetailViewController
        detailedViewController.e = self.emoji
    }
}