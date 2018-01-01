//
//  UITextFieldExtensions.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/28/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import UIKit

extension UITextField {
    func drawBorderBottom() {
        self.borderStyle = .none
        
        let border = CALayer()
        border.frame = CGRect(x: 0, y: self.frame.size.height - 1.0, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = 1.0
        border.borderColor = UIColor.white.cgColor
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
