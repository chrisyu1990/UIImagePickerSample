//
//  ViewController.swift
//  UIImagePickerSample
//
//  Created by Chris Yu on 2015/12/27.
//  Copyright (c) 2015年 Chris Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var nextController:UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseImage(sender: UIButton) {
        nextController = UIImagePickerController()
        self.presentViewController(nextController, animated: true, completion: nil)
    }

    //activityview controller need to be tested
    @IBAction func alert(sender: UIButton) {
        nextController = UIAlertController()
        nextController.title = "test alert"
        (nextController as UIAlertController).message = "test message"
        let okAction = UIAlertAction(title: "ok",
            style: UIAlertActionStyle.Default,
            handler: {(UIAlertAction) -> Void in self.dismissViewControllerAnimated(true, completion: nil)})
        (nextController as UIAlertController).addAction(okAction)
        self.presentViewController(nextController, animated: true, completion: nil)
    }
}

