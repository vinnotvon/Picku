//
//  PickUpLine.swift
//  Picku
//
//  Created by Devin Keel on 4/8/18.
//  Copyright © 2018 Devin Keel. All rights reserved.
//

import Foundation

class PickUpLine {
    
    let pickUpLineIdentifier : Int
    let pickUpLineText : String
    
    init(pickUpLineID: Int, pickUpLine: String) {
        pickUpLineIdentifier = pickUpLineID
        pickUpLineText = pickUpLine
    }
}
