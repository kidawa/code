//
//  ViewController.swift
//  hamburgerCollection
//
//  Created by Chens on 29/08/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let burgers = ["Big Mac", "Quarter Pounder", "Classic Angus", "Aussie BBQ Angus", "Cheeseburger", "Double Cheeseburger"]
    
    let burgerImages: [UIImage] = [
    
        UIImage(named: "bigmac")!,
        UIImage(named: "quarterpounder")!,
        UIImage(named: "classicangus")!,
        UIImage(named: "aussieBBQ")!,
        UIImage(named: "cheeseburger")!,
        UIImage(named: "doublecheeseburger")!,
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return burgers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.hamburgerLabel.text = burgers[indexPath.item]
        cell.hamburgerImageView.image = burgerImages[indexPath.item]
        
        return cell

    }


}

