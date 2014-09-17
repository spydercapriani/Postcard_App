//
//  ViewController.swift
//  Postcard
//
//  Created by Daniel Gilbert on 9/17/14.
//  Copyright (c) 2014 Daniel Gilbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendMail(sender: UIButton) {
        // Code evaluate when we press the button
        messageLabel.hidden = false
        nameLabel.hidden = false
        nameLabel.text = txtName.text
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.text = txtMessage.text
        messageLabel.textColor = UIColor.redColor() // Change color of text
        txtName.text = ""
        txtMessage.text = ""
        txtMessage.resignFirstResponder() // Hide the keyboard
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal) // Change button's text
        
    }

}

