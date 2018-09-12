//
//  ViewController.swift
//  InstagramClone
//
//  Created by Chens on 05/09/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webViewBG: UIWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let htmlPath = Bundle.main.path(forResource: "WebViewContent", ofType: "html")
        let htmlURL = URL(fileURLWithPath: htmlPath!)
        let html = try? Data(contentsOf: htmlURL)
        
        self.webViewBG.load(html!, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: htmlURL.deletingLastPathComponent())

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    
}

