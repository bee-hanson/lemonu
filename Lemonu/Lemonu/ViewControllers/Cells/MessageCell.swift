//
//  MessageCell.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/27/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import UIKit

class MessageCell: UICollectionViewCell {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    
    override func layoutSubviews() {
        self.userImage.layer.masksToBounds = true
        self.userImage.layer.cornerRadius = CGFloat(roundf(Float(self.userImage.frame.size.width/2.0)))
    }
}
