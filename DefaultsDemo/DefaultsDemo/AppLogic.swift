//
//  AppLogic.swift
//  DefaultsDemo
//
//  Created by Rohan Mishra on 9/5/15.
//  Copyright (c) 2015 Defaults. All rights reserved.
//

import Foundation

class AppLogic {
    
}

extension UIButton {
    func kern(kerningValue:CGFloat)
    {
        let attributedText =  NSAttributedString(string: self.titleLabel!.text!, attributes: [NSKernAttributeName:kerningValue, NSFontAttributeName:self.titleLabel!.font, NSForegroundColorAttributeName:self.titleLabel!.textColor])
        self.setAttributedTitle(attributedText, forState: UIControlState.Normal)
    }
}

extension UILabel {
    func kern(kerningValue:CGFloat)
    {
        self.attributedText =  NSAttributedString(string: self.text ?? "", attributes: [NSKernAttributeName:kerningValue, NSFontAttributeName:font, NSForegroundColorAttributeName:self.textColor])
    }
}