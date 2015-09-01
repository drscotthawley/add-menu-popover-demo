//
//  ViewController.swift
//  PopUpMenuTest
//
//  Created by Scott Hawley on 8/31/15.
//  Copyright © 2015 Scott Hawley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    @IBOutlet weak var addbutton: UIBarButtonItem!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var menuSelections : [String] = []
    
    @IBAction func addButtonPress(sender: AnyObject) {
         self.performSegueWithIdentifier("showView", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showView" {
            let vc = segue.destinationViewController
            let controller = vc.popoverPresentationController
            
            if controller != nil {
                controller?.delegate = self
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        messageLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }

}

