//
//  ViewController.swift
//  Spotify
//
//  Created by Siyu Zhang on 5/23/15.
//  Copyright (c) 2015 Siyu Zhang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    var player : AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet var sliderValue: UISlider!
    
    @IBAction func play(sender: AnyObject) {
        
        player.play()
        
    }
    
    @IBAction func sliderChanged(sender: AnyObject) {
        
        player.volume = sliderValue.value
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    
    
    
    @IBAction func stop(sender: AnyObject) {
        
        player.stop()
        player.currentTime = 0;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // UINavigationBar.appearance().setBackgroundImage(UIImage(named: "spo.png")!.resizableImageWithCapInsets(UIEdgeInsetsMake(0, 0, 0, 0), resizingMode: .Stretch), forBarMetrics: .Default)
        
        var audioPath = NSBundle.mainBundle().pathForResource("bach1", ofType: "mp3")
        
        var error : NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath!), error: &error)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

