//
//  ViewController.swift
//  PostCard
//
//  Created by User on 5/20/15.
//  Copyright (c) 2015 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var textTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton){
        informationLabel.text = textTextField.text;
        informationLabel.hidden = false;
        
        textTextField.text.removeAll(keepCapacity: false);
        textTextField.resignFirstResponder();
        
        sender.setTitle("Sending...", forState: UIControlState.Highlighted);
    }


}

