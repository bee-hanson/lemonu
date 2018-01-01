//
//  HalfCircleView.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/28/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import UIKit

extension UIView {
    func drawRightSideSemiCircle() {
        let centerPoint = CGPoint(x: self.bounds.size.width/2, y: self.bounds.size.height/2)
        let circleRadius = self.bounds.width/2
        let circlePath = UIBezierPath(arcCenter: centerPoint, radius: circleRadius, startAngle: CGFloat.pi*1.5, endAngle: CGFloat.pi*2.5, clockwise: true)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        self.layer.mask = shapeLayer
    }
    
    func drawLeftSideSemiCircle() {
        let centerPoint = CGPoint(x: self.bounds.size.width/2, y: self.bounds.size.height/2)
        let circleRadius = self.bounds.width/2
        let circlePath = UIBezierPath(arcCenter: centerPoint, radius: circleRadius, startAngle: CGFloat.pi*1.5, endAngle: CGFloat.pi*2.5, clockwise: false)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        self.layer.mask = shapeLayer
    }
    
    func drawYellowBorder() {
        self.layer.borderColor = UIColor(red: 245/250, green: 203/250, blue: 58/250, alpha: 1).cgColor
        self.layer.borderWidth = 5.0
        self.layer.masksToBounds = true
    }
}
