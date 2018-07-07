//
//  FirstViewController.swift
//  data-transfer-between-two-views
//
//  Created by Chens on 06/07/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var text:String = ""
    
    @IBAction func onButtonTap(_ sender: Any)
    {
        let vc = SecondViewController(nibName: "SecondaryViewController", bundle: nil)
        vc.text = "Next level"
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

