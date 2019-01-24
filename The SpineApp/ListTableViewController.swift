//
//  ListTableViewController.swift
//  The SpineApp
//
//  Created by Teodor Stanishev on 22.01.19.
//  Copyright © 2019 THESPINEAPPLE. All rights reserved.
//

import UIKit

var items = [Item]()

class ListTableViewController: UITableViewController {

    @IBOutlet weak var myTableView: UITableView!
    let cellIdentifier = "SavedItemCell"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        items.append(Item(name: "Test1", price: 0.1))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Get current size of items
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (items.count)
    }
    
    //Show items
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
       
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: cellIdentifier)
        cell.textLabel?.text = items[indexPath.row].name
        
        
        return(cell)
    }
    
    //Selected current item
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "openCurrentItem", sender: myTableView.cellForRow(at: indexPath))
    }
    
    // This function is called before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        //get a reference to the second view controller
        let itemViewController = segue.destination as! ItemViewController
        let selectedItem = sender as? UITableViewCell
        
        
        //set a variable in the second view controller with the data to pass
        itemViewController.receivedData = selectedItem?.textLabel?.text
    }
    
    //Remove item current item
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            items.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }

}
