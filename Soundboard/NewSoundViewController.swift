//
//  NewSoundViewController.swift
//  Soundboard
//
//  Created by Pablo on 1/12/16.
//  Copyright © 2016 Pablo Ledesma. All rights reserved.
//

import UIKit

class NewSoundViewController : UIViewController {
    
    @IBOutlet weak var soundTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func cancelTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func saveTapped(sender: AnyObject) {
        //create a new sound object
        var sound = Sound()
        if var soundField = self.soundTextField {
            sound.name = self.soundTextField.text! //whatever is inside the text view
        }
        
        // Add sound to the table view controller 
        // Dismiss this view controller
        self.dismissViewControllerAnimated(true, completion: nil)

    }
}
