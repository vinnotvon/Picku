//
//  PickUpLineBank.swift
//  Picku
//
//  Created by Devin Keel on 4/2/18.
//  Copyright © 2018 Devin Keel. All rights reserved.
//

import Foundation

class PickUpLineBank {
    
    var list = [PickUpLine]()
    
    init() {
        
        list.append(PickUpLine(pickUpLineID: 1, pickUpLine: "Are you a parking violation? Because you have fine written all over you."))
        
        list.append(PickUpLine(pickUpLineID: 2, pickUpLine: "Do you have a map? I'm getting lost in your eyes."))
        
        list.append(PickUpLine(pickUpLineID: 3, pickUpLine: "If you were a vegetable you would be a cute-cumber."))
        
        list.append(PickUpLine(pickUpLineID: 4, pickUpLine: "Any idea what this shirt is made of? Beacause it feels like boyfriend material."))
        
        list.append(PickUpLine(pickUpLineID: 5, pickUpLine: "Are you an orphanage? I'd I want to give you kids."))

    }
}
