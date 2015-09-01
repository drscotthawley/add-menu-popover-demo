//
//  ChooseSourceTableViewController.swift
//  PopOverMenuDemo
//
//  Created by Scott Hawley on 8/31/15.
//  Copyright © 2015 Scott Hawley. All rights reserved.
//

import UIKit

class ChooseSourceTableViewController: UITableViewController {

    
    let cellStrings = ["Photo Library", "Camera", "Dropbox"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return cellStrings.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SourceLabelCell", forIndexPath: indexPath)
        cell.textLabel?.text = "\(cellStrings[indexPath.row])"
        return cell
    }

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectionString = cellStrings[indexPath.row]
        print(" ChooseSourceTableViewController: Hey you just selected row \( indexPath.row): \(selectionString)")
        
        let rootVC = self.presentingViewController as! ViewController
        
        rootVC.menuSelections.append(selectionString)
        
        var returnString = ""
        for selection in rootVC.menuSelections {
            returnString = returnString + selection + ","
        }
        rootVC.messageLabel.text = returnString
        self.dismissViewControllerAnimated(true, completion: nil)
    }    

}
