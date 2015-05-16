//
//  ViewController.swift
//  Postcard
//
//  Created by Harrsion Brace on 5/1/15.
//  Copyright (c) 2015 HarrsionBrace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var outputName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //adding a comment here for test commit
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        messageLabel.textColor = UIColor.redColor()
        
        outputName.hidden = false
        outputName.text = enterNameTextField.text
        outputName.textColor=UIColor.blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        
        
        enterMessageTextField.resignFirstResponder()
        
        
      
        
        

        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}

