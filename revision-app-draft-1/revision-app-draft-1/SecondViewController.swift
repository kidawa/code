//
//  SecondViewController.swift
//  revision-app-draft-1
//
//  Created by Chens on 05/07/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var userNameField: UITextField!
    var passwordField: UITextField!
    var phoneNumberField: UITextField!

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterButton(_ sender: Any) {
        
        textView.text = "User Name: \(userNameField.text!)\nPassword: \(passwordField.text!)\nPhone number: \(phoneNumberField.text!)"
        
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        phoneNumberField.resignFirstResponder()
//    }
}

extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

