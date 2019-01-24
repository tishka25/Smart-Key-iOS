//
//  ItemViewController.swift
//  The SpineApp
//
//  Created by Teodor Stanishev on 23.01.19.
//  Copyright © 2019 THESPINEAPPLE. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    var receivedData:String? = nil
    @IBOutlet weak var textLabelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        if(receivedData != nil){
            textLabelName.text = receivedData
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
