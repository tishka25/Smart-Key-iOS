//
//  Item.swift
//  The SpineApp
//
//  Created by Teodor Stanishev on 22.01.19.
//  Copyright © 2019 THESPINEAPPLE. All rights reserved.
//

import UIKit

class Item: NSObject{

    var name:String = ""
    var price :Float = 0.0
    
    init(name:String , price:Float){
        self.name = name;
        self.price = price;
    }
    
}
