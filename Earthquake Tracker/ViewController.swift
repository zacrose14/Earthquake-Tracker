//
//  ViewController.swift
//  Earthquake Tracker
//
//  Created by Zachary Rose on 2/24/18.
//  Copyright © 2018 Zachary Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Quake.sharedInstance().getQuakeData()   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

