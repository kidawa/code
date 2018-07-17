//
//  ViewController.swift
//  pass-data
//
//  Created by Chens on 07/07/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField1: UITextField!
    
    
    @IBAction func enter(_ sender: Any)
    {
        if textField.text != ""
        {
            performSegue(withIdentifier: "segue", sender: self)
        }
        
        if textField1.text != ""
        {
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        var secondController = segue.destination as! SecondViewController
        secondController.myString = textField.text!
        secondController.yourString = textField1.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

