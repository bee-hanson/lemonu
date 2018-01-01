//
//  LemonFinderViewController.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/28/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import UIKit

class LemonFinderViewController: UIViewController {
    
    @IBOutlet weak var swipeRightView: UIView!
    @IBOutlet weak var youAreHereView: UIView!
    @IBOutlet weak var lemonThumbnail: UIView!
    @IBOutlet weak var lemonImage: UIImageView!
    @IBOutlet weak var lemonName: UILabel!
    
    var currentlySelectedButton: UIButton?
    var userController = UserController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipedRight))
        swipeRightGesture.direction = UISwipeGestureRecognizerDirection.right
        self.swipeRightView.addGestureRecognizer(swipeRightGesture)
        configureUI()
    }
    
    func configureUI() {
        self.swipeRightView.drawRightSideSemiCircle()
        
        self.youAreHereView.backgroundColor = UIColor.clear
        self.youAreHereView.drawYellowBorder()
        self.youAreHereView.isHidden = true
        
        self.lemonThumbnail.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        self.lemonName.textColor = UIColor.white
        self.lemonImage.layer.masksToBounds = true
        self.lemonImage.layer.cornerRadius = CGFloat(roundf(Float(self.lemonImage.frame.size.width/2.0)))
        self.lemonThumbnail.drawYellowBorder()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapLemonThumbnail))
        self.lemonThumbnail.addGestureRecognizer(tapGesture)
        self.lemonThumbnail.isHidden = true
    }
    
    func showLemonThumbnailView(buttonX: CGFloat, buttonY: CGFloat) {
        var viewX = CGFloat()
        if ((buttonX + 20) > (self.view.bounds.width - 120)) {
            viewX = buttonX - 100
        } else {
            viewX = buttonX + 20
        }
        
        var viewY = CGFloat()
        if ((buttonY - 100) < 0) {
            viewY = buttonY + 25
        } else {
            viewY = buttonY - 100
        }
        
        self.lemonThumbnail.frame = CGRect.init(x: viewX, y: viewY, width: 100, height: 100)
        self.lemonThumbnail.isHidden = false
    }
    
    @objc func swipedRight() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func didTapLemonThumbnail() {
        self.performSegue(withIdentifier: "segueToLemonProfile", sender: self)
    }

    @IBAction func didTapMeButton(_ sender: UIButton) {
        if youAreHereView.isHidden {
            self.youAreHereView.isHidden = false
        } else {
            self.youAreHereView.isHidden = true
        }
    }
    
    @IBAction func didTapLemonButton(_ sender: UIButton) {
        if let isSelected = self.currentlySelectedButton {
            if isSelected == sender {
                self.currentlySelectedButton = nil
                self.lemonThumbnail.isHidden = true
            } else {
                self.currentlySelectedButton = sender
                self.showLemonThumbnailView(buttonX: sender.frame.origin.x, buttonY: sender.frame.origin.y)
            }
        } else {
            self.currentlySelectedButton = sender
            self.showLemonThumbnailView(buttonX: sender.frame.origin.x, buttonY: sender.frame.origin.y)
        }
    }

}
