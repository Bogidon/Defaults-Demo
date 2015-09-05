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
    @IBOutlet weak var visitSiteButton: UIButton!
    @IBOutlet weak var builtAtPennAppsButton: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Kerning via extension
        appTitle.kern(14)
        visitSiteButton.kern(2)
        builtAtPennAppsButton.kern(2)
    }
    
    @IBAction func contactUs(sender: UIButton)
    {
        DFOpen.mail("bogdan@chehacks.com")
    }

}

