//
//  ViewController.swift
//  tutorial
//
//  Created by Chens on 03/07/2018.
//  Copyright © 2018 mapapp. All rights reserved.
//

import UIKit
import Foundation

//class ViewController: UIViewController {
    
/*  let explicitFloat: Float = 4
    let label = "The width is"
    let width = 94
    let widthLabel = String(label) + String(width)
    
    var apples = 3
    var oranges = 5
    let appleSummary = "I have \(apples) apples."
    let fruitSummary = "I have \(apples + oranges) pieces of fruit"
    
    let quotation = """
    I said "I have \(apples) apples."
    And then I said "I have \(apples + oranges) pieces of fruit"
    """

    var shoppingList = ["catfish", "water", "tulips", "blue paint"]
    shoppingList[1] = "bottle of water"

    var occupations = [
        "Malcolm": "Captain",
        "Kaylee": "Mechanic",
    ]
    occupations["Jayne"] = "Public Relations"

    let emptyArray = [String]()
    let emptyDictionary = [String: Float]()
 
 */

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }
    else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
    

/*    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
*/
