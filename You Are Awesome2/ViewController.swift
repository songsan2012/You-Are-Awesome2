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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("😎 The program just loaded now.")
        
//        messageLabel.text = "Fabulous?, that's you"
        
    }
    
    @IBAction func ShowMessage(_ sender: Any) {
//        print("🤣 The messsage button was pressed")
    
        messageLabel.text = "You Are Awesome!!!"

        messageImage.image = UIImage(named: "image0")
    
    }

    @IBAction func ShowAnotherMessage(_ sender: Any) {
        
        messageLabel.text = "You Are Great!!!!"
        messageLabel.textColor = .blue
        
        messageImage.image = UIImage(named: "image1")
        
        
    }
    
}

