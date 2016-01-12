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
    
    var sounds: [Sound] = []
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        var soundPath = NSBundle.mainBundle().pathForResource("horse", ofType: "m4a")
        var soundURL = NSURL.fileURLWithPath(soundPath!)
        
        var sound1 = Sound()
        sound1.name = "Horse"
        sound1.URL = soundURL
        
        var sound2 = Sound()
        sound2.name = "Cat"
        sound2.URL = soundURL
        
        self.sounds.append(sound1)
        self.sounds.append(sound2)

    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sounds.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        var sound = self.sounds[indexPath.row]
        
        cell.textLabel!.text = sound.name
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


