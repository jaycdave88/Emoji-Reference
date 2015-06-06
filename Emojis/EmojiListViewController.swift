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
        
        if self.emoji == "🐙"{
            detailedViewController.emojiDict = "Octopus"
        }
        if self.emoji == "😎"{
            detailedViewController.emojiDict = "Smiling Face With Sunglasses"
        }
        if self.emoji == "😰"{
            detailedViewController.emojiDict = "Face With Open Mouth And Cold Sweat"
        }
        if self.emoji == "🐘"{
            detailedViewController.emojiDict = "Elephant"
        }
        if self.emoji == "🌚"{
            detailedViewController.emojiDict = "New Moon With Face"
        }
        if self.emoji == "👊"{
            detailedViewController.emojiDict = "Fist Bump"
        }
        if self.emoji == "🌼"{
            detailedViewController.emojiDict = "Sun Flower"
        }
        if self.emoji == "✌️"{
            detailedViewController.emojiDict = "Peace Sign"
        }
        if self.emoji == "😄"{
            detailedViewController.emojiDict = "Smiling Face With Open Mouth And Smiling Eyes"
        }
        if self.emoji == "😃"{
            detailedViewController.emojiDict = "Smiling Face With Open Mouth"
        }
        if self.emoji == "😀"{
            detailedViewController.emojiDict = "Grinning Face"
        }
        if self.emoji == "😊"{
            detailedViewController.emojiDict = "Smiling Face With Smiling Eyes"
        }
        if self.emoji == "☺️"{
            detailedViewController.emojiDict = "Smiling Face With Closed Mouth And Smiling Eyes"
        }
        if self.emoji == "😉"{
            detailedViewController.emojiDict = "Winky Face"
        }
        if self.emoji == "😍"{
            detailedViewController.emojiDict = "Smiling Face With Heart-Shaped Eyes"
        }
        if self.emoji == "😘"{
            detailedViewController.emojiDict = "Face Throwing A Kiss"
        }
        if self.emoji == "😚"{
            detailedViewController.emojiDict = "Kissing Face With Closed Eyes"
        }
        if self.emoji == "😗"{
            detailedViewController.emojiDict = "Kissing Face"
        }
        if self.emoji == "😍"{
            detailedViewController.emojiDict = "Smiling Face With Heart-Shaped Eyes"
        }
        if self.emoji == "😜"{
            detailedViewController.emojiDict = "Face With Stuck-Out Tongue And Winking Eye"
        }
        if self.emoji == "😝"{
            detailedViewController.emojiDict = "Face With Stuck-Out Tongue And Tightly-Closed Eyes"
        }
        if self.emoji == "😛"{
            detailedViewController.emojiDict = "Face With Stuck-Out Tongue"
        }
        if self.emoji == "😳"{
            detailedViewController.emojiDict = "Flushed Face"
        }
        if self.emoji == "😁"{
            detailedViewController.emojiDict = "Grinning Face With Smiling Eyes"
        }
        if self.emoji == "😔"{
            detailedViewController.emojiDict = "Pensive Face"
        }
        if self.emoji == "😌"{
            detailedViewController.emojiDict = "Relieved Face"
        }
        if self.emoji == "😞"{
            detailedViewController.emojiDict = "Disappointed Face"
        }
        if self.emoji == "😣"{
            detailedViewController.emojiDict = "Persevering Face"
        }
        if self.emoji == "😢"{
            detailedViewController.emojiDict = "Crying Face"
        }
        if self.emoji == "😂"{
            detailedViewController.emojiDict = "Face With Tears Of Joy"
        }
        if self.emoji == "😭"{
            detailedViewController.emojiDict = "Loudly Crying Face"
        }
        if self.emoji == "😪"{
            detailedViewController.emojiDict = "Sleepy Face"
        }
        if self.emoji == "😰"{
            detailedViewController.emojiDict = "Face With Open Mouth And Cold Sweat"
        }
        if self.emoji == "😡"{
            detailedViewController.emojiDict = "Pouting Face"
        }
        if self.emoji == "😈"{
            detailedViewController.emojiDict = "Smiling Face With Horns"
        }
        if self.emoji == "👿"{
            detailedViewController.emojiDict = "Imp"
        }













        
        
    }
}