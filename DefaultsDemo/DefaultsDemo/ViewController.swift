//
//  ViewController.swift
//  DefaultsDemo
//
//  Created by Rohan Mishra on 9/5/15.
//  Copyright (c) 2015 Defaults. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let attributedString = NSMutableAttributedString(string: "DEFAULTS")
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(1.4), range: NSRange(location: 0, length: 8))
        
        appTitle.attributedText = attributedString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

