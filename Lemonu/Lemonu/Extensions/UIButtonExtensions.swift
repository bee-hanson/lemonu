//
//  UIButtonExtensions.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/28/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func roundWithWhiteBorder() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.cornerRadius = 15.0
    }
}
