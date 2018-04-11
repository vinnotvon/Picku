//
//  ViewController.swift
//  Picku
//
//  Created by Devin Keel on 3/31/18.
//  Copyright © 2018 Devin Keel. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let allPickUpLines = PickUpLineBank()
    var n : Int = 0

    @IBOutlet weak var randomPickUpLineText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        randomArrayID()
        
        let firstPickUpLine = allPickUpLines.list[n]
        randomPickUpLineText.text = firstPickUpLine.pickUpLineText
        
    }
    
    func randomArrayID() {
        
        n = Int(arc4random_uniform(UInt32(allPickUpLines.list.count)))
        
    }
    
    @IBAction func nextRandomPickUpLine(_ sender: UIButton) {
        
        // Remove previous line from the array selection
        allPickUpLines.list.remove(at: n)
        print("The new count of n is \(allPickUpLines.list.count)")
        randomArrayID()
        var randomPickUpLine = allPickUpLines.list[n]
        randomPickUpLineText.text = randomPickUpLine.pickUpLineText
    }
    
    // MARK: Load from Firebase DB
    
    func retrievePickUpLines() {
        let lineDatabase = Database.database().reference().child("lines")
        lineDatabase.observe(.childAdded) { (snapshot) in
            
            let snapshotValue = snapshot.value as! [String : AnyObject]
            let pickUpLineID = snapshotValue["id"]!
            let pickUpLine = snapshotValue["line"]!
            print(pickUpLineID, pickUpLine)
            
        }
    }
}

