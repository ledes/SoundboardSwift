//
//  NewSoundViewController.swift
//  Soundboard
//
//  Created by Pablo on 1/12/16.
//  Copyright © 2016 Pablo Ledesma. All rights reserved.
//

import UIKit

class NewSoundViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func cancelTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func saveTapped(sender: AnyObject) {
        //create a new sound object
        // Add sound to the table view controller 
        // Dismiss this view controller
    }
}
