//
//  ViewController.swift
//  DefaultsDemo
//
//  Created by Rohan Mishra on 9/5/15.
//  Copyright (c) 2015 Defaults. All rights reserved.
//

import UIKit
import DefaultsSDK

class ViewController: UIViewController {
    
    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var visitSiteButton: UIButton!
    @IBOutlet weak var builtAtPennAppsButton: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Kerning via extension (AppLogic)
        appTitle.kern(14)
        visitSiteButton.kern(2)
        builtAtPennAppsButton.kern(2)
        
        // Coloring part of visitSiteButton string
        let visitSiteText = visitSiteButton.titleLabel?.text
        let ourSite = "our site"
        let rangeOfSiteButton = (visitSiteText! as NSString).rangeOfString(ourSite)
        let attributedString = NSMutableAttributedString(string: visitSiteText!, attributes: [NSFontAttributeName : UIFont.systemFontOfSize(14)])
        
        attributedString.setAttributes([NSFontAttributeName : UIFont.systemFontOfSize(20), NSForegroundColorAttributeName : UIColor(rgba: "#50E3C2").CGColor], range: rangeOfSiteButton)
        // visitSiteButton.titleLabel?.attributedText = attributedString
    }
    
    @IBAction func contactUs(sender: UIButton)
    {
        DFOpen.mail("bogdan@chehacks.com")
    }

    @IBAction func toWellsFargoStadium(sender: AnyObject)
    {
        DFOpen.navigateToAddress("5 Callison Lane, Voorhees NJ 08043")
    }
}

