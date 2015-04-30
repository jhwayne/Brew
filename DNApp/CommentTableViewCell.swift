//
//  CommentTableViewCell.swift
//  Brew
//
//  Created by Jake Wayne on 2015-04-22.
//  Copyright (c) 2015 Jake Wayne. All rights reserved.
//

import UIKit

protocol CommentTableViewCellDelegate: class {
    
    func commentTableViewCellDidTouchUpvote(cell: CommentTableViewCell, sender: AnyObject)



}

class CommentTableViewCell: UITableViewCell {

    @IBOutlet weak var commentText: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var upvoteCount: UILabel!
    
    @IBOutlet weak var upvoteButton: SpringButton!
    
    weak var delegate: CommentTableViewCellDelegate?
    
    @IBAction func upvoteButtonPressed(sender: AnyObject) {
        println("Hello")
        
        delegate?.commentTableViewCellDidTouchUpvote(self, sender:sender)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
