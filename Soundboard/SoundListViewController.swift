//
//  SoundListViewController.swift
//  Soundboard
//
//  Created by Pablo on 1/10/16.
//  Copyright © 2016 Pablo Ledesma. All rights reserved.
//

import UIKit
import AVFoundation //for the audio player

class SoundListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel!.text = "bur bur"
        return cell
    }
    
    
    ///audio
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var soundPath = NSBundle.mainBundle().pathForResource("horse", ofType: "m4a")
        var soundURL = NSURL.fileURLWithPath(soundPath!)
        
        do {
            self.audioPlayer = try  AVAudioPlayer(contentsOfURL: soundURL)
        } catch let error {
            print("error occured \(error)")
        }
        self.audioPlayer.play()
    }

}


