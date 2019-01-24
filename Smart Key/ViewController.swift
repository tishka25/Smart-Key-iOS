//
//  ViewController.swift
//  The SpineApp
//
//  Created by Teodor Stanishev on 22.01.19.
//  Copyright © 2019 THESPINEAPPLE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        if(textField.text != nil){
            items.append(Item(name: textField.text!, price: items[items.endIndex - 1].price + 1 ))
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

