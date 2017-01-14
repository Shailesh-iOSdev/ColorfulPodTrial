//
//  ViewController.swift
//  ColorfulPodTrial
//
//  Created by Shailesh on 14/01/17.
//  Copyright © 2017 Pfizer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fantasticView = ColorfulView(frame: self.view.bounds)
        
        self.view.addSubview(fantasticView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

