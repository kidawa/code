//
//  ViewController.swift
//  flippingapp
//
//  Created by Chens on 04/07/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnimg: UIButton!
    var isOpen = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnaFlip(_ sender: Any) {
        if isOpen {
            isOpen = false
            var img = UIImage(named: "apple-cartoon")
            btnimg.setImage(img, for: .normal)
            UIView.transition(with: btnimg,  duration: 0.3, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: nil)
        }
        else {
            isOpen = true
            var img = UIImage(named: "word-apple")
            btnimg.setImage(img, for: .normal)
            UIView.transition(with: btnimg,  duration: 0.3, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
}

