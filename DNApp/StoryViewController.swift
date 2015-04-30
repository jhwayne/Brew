//
//  StoryViewController.swift
//  Brew
//
//  Created by Jake Wayne on 2015-04-22.
//  Copyright (c) 2015 Jake Wayne. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    
    @IBOutlet weak var storyView: UITextView!
    

    @IBOutlet weak var titleButton: UIButton!
    
    @IBAction func titlePressed(sender: UIButton) {
        
        if titleButton.titleLabel?.text == "Brew"{
            
            titleButton.setTitle("10,543", forState: UIControlState.Normal)
            
        } else {
            
            titleButton.setTitle("Brew", forState: UIControlState.Normal)
            
        }
        
    }

    
    @IBAction func joinButtonPressed(sender: AnyObject) {
        
        performSegueWithIdentifier("LoginSegue", sender: self)
        
    }
    
    @IBAction func commentButtonPressed(sender: AnyObject) {
        
        performSegueWithIdentifier("CommentSegue", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
        
        //
        titleButton.setTitle("Brew", forState: UIControlState.Normal)
        //
        titleButton.titleLabel?.font = UIFont(name: "MarkerFelt-Thin", size: 28.0)
        //
        titleButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        //
        titleButton.addTarget(self, action: "titlePressed:", forControlEvents: UIControlEvents.TouchUpInside)
        //
        self.navigationItem.titleView = titleButton
        //
        //        // Do any additional setup after loading the view, typically from a nib.
        //
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
