//
//  CommentTableViewController.swift
//  Brew
//
//  Created by Jake Wayne on 2015-04-22.
//  Copyright (c) 2015 Jake Wayne. All rights reserved.
//

import UIKit

class CommentTableViewController: UITableViewController, CommentTableViewCellDelegate {

    
    @IBOutlet var commentsTable: UITableView!
    

    
    @IBAction func postButtonPressed(sender: AnyObject) {
        
        performSegueWithIdentifier("PostSegue", sender: self)
        
    }
    
    var textArray: NSMutableArray! = NSMutableArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentsTable.estimatedRowHeight = 100.0
        commentsTable.rowHeight = UITableViewAutomaticDimension
        
        self.textArray.addObject("This is an amount of text.")
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.textArray.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("CommentCell") as! CommentTableViewCell
        
        cell.commentText.text = self.textArray.objectAtIndex(indexPath.row) as? String
        cell.timeLabel.text = "5m"
        cell.upvoteCount.text = "26"
        
        cell.delegate = self
        
        return cell
        
        
    }
    

// Mark CommentTableViewCellDelegate
    func commentTableViewCellDidTouchUpvote(cell: CommentTableViewCell, sender: AnyObject) {
        //TODO
    }
    

}
