//
//  ViewController.swift
//  DialogAppearExample
//
//  Created by 沈玉霏 on 2016/11/22.
//  Copyright © 2016年 syu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func datepickerClick(sender: AnyObject) {
        let datepicker = DatePickerDialog()
        datepicker.show("datepicker") { (date) in
            
        }
    }

    @IBAction func logoutMain(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName(SYSwitchRootViewControllerKeyLogin, object: true)
    }
}

