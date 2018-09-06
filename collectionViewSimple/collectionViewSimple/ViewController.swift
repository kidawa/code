//
//  ViewController.swift
//  collectionViewSimple
//
//  Created by Chens on 31/08/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let items = ["English", "Maths", "Biology", "Chemistry", "Physics", "History", "Geography", "French", "German", "Mandarin Chinese"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.myLabel.text = items[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }


}

