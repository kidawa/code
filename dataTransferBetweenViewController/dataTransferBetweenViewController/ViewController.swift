//
//  ViewController.swift
//  dataTransferBetweenViewController
//
//  Created by Chens on 17/07/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var termField: UITextField!
    
    var segueText = ""
    var segueTermText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func done(_ sender: Any)
    {
        self.segueText = textField.text! 
        self.segueTermText = termField.text!
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let vc = segue.destination as! secondViewController
        vc.finalSegue = self.segueText
        vc.finalfSegue = self.segueTermText
    }
    
}

