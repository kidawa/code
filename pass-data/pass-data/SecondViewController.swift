//
//  SecondViewController.swift
//  pass-data
//
//  Created by Chens on 07/07/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label1: UILabel!
    
    @IBAction func back(_ sender: Any) {
    }
    
    var myString = String()
    var yourString = String()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = myString
        label1.text = yourString

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
