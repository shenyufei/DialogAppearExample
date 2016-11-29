//
//  LoginVC.swift
//  DialogAppearExample
//
//  Created by 沈玉霏 on 2016/11/22.
//  Copyright © 2016年 syu. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginClick(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName(XMGSwitchRootViewControllerKey, object: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
