//
//  ViewController.swift
//  You Are Awesome2
//
//  Created by song on 12/23/21.
//  Copyright © 2021 song. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageButtonPressed: UIButton!
    
    @IBOutlet weak var messageImage: UIImageView!
    
    var imageCounter = 0
    let maxImageCount = 9
    
    var audioPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }
    
    @IBAction func ShowMessage(_ sender: Any) {
        
        // -- Make a loop to increment for the image
        print(imageCounter)
        
       
        
        // -- Message Array
        var messageArray = ["You Are Awesome!", "You Are Great", "Great Job", "Doing Great", "Almost there", "You are amazing", "Almost done", "Keep it up", "Make it great!!!"]
        
        
        if (imageCounter > maxImageCount) {
            
            // -- Reset Counter
            imageCounter = 0
            
            messageLabel.text = "Round complete. You Are Awesome!!!"
        }
        
        messageImage.image = UIImage(named: "image\(imageCounter)")
        
        if messageArray.count > imageCounter {
            messageLabel.text = String(imageCounter + 1) + ". " + messageArray[imageCounter]
        }
        else {
            messageLabel.text = "Message done"
        }
        
         imageCounter = imageCounter + 1
        
        var soundName = "sound0"
        
        // -- Play a Sound
//        if let sound = NSDataAsset(name: soundName) {
//            do {
//                try audioPlayer = AVAudioPlayer(data: sound.data)
//                audioPlayer.play()
//                
//            } catch {
//                print("😡 Error. Could not initiate player.")
//            }
//            
//        }
//        else {
//            // -- Print an error
//            print("😡 Error. Could not play sound0.")
//        }
        
        
    }
    
    @IBAction func ShowAnotherMessage(_ sender: Any) {
        messageLabel.text = "You Are Great!!!!"
        messageLabel.textColor = .blue
        
        messageImage.image = UIImage(named: "image1")
        
    }
    
}

