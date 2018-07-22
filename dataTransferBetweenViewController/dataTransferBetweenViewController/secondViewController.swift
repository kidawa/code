//
//  secondViewController.swift
//  dataTransferBetweenViewController
//
//  Created by Chens on 17/07/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    var finalSegue = ""
    var finalfSegue = ""
    
    @IBOutlet weak var button: UIButton!
    var isOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonFlip(_ sender: Any)
    {
        if isOpen {
            isOpen = false
            let frontSide = finalSegue
            button.setTitle(frontSide, for: .normal)
            UIView.transition(with: button, duration: 0.3, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: nil)
        }
        else {
            isOpen = true
            let frontSide = finalfSegue
            button.setTitle(frontSide, for: .normal)
            UIView.transition(with: button, duration: 0.3, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: nil)
        }
    }

}
