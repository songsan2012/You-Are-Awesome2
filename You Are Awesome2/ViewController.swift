//
//  ViewController.swift
//  You Are Awesome2
//
//  Created by song on 12/23/21.
//  Copyright © 2021 song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageButtonPressed: UIButton!
    
    @IBOutlet weak var messageImage: UIImageView!
    
    var imageCounter = 0
    let maxImageCount = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }
    
    @IBAction func ShowMessage(_ sender: Any) {

        // -- Make a loop to increment for the image
        print(imageCounter)
        
        imageCounter = imageCounter + 1
        
        if (imageCounter > maxImageCount) {
            imageCounter = 0
            
            messageLabel.text = "Round complete. You Are Awesome!!!"
        }
        
        messageImage.image = UIImage(named: "image\(imageCounter)")
    }
    
    @IBAction func ShowAnotherMessage(_ sender: Any) {
        messageLabel.text = "You Are Great!!!!"
        messageLabel.textColor = .blue
        
        messageImage.image = UIImage(named: "image1")
        
    }
    
}

