//
//  AddTableViewController.swift
//  PopOverMenuDemo
//
//  Created by Scott Hawley on 9/1/15.
//  Copyright © 2015 Scott Hawley. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController {
    
    // throw in some dummy data
    let cellStrings = ["Gear","Knob"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        //self.clearsSelectionOnViewWillAppear = false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return cellStrings.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AddLabelCell", forIndexPath: indexPath)
        cell.textLabel?.text = "\(cellStrings[indexPath.row])"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectionString = cellStrings[indexPath.row]
        print(" ChooseGearTableViewController: Hey you just selected \(selectionString)")
        let rootVC = self.presentingViewController as! ViewController
        rootVC.menuSelections = [selectionString]
        
    }

}
