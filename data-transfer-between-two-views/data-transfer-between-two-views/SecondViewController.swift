//
//  SecondViewController.swift
//  data-transfer-between-two-views
//
//  Created by Chens on 06/07/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var text:String = "hello"
    
    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel?.text = text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

