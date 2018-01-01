//
//  UserProfileViewController.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/28/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, LoginViewControllerDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var swipeLeftView: UIView!
    @IBOutlet weak var editProfileButton: UIButton!
    
    var isLoggedIn = false
    var userController = UserController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        let leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipedLeft))
        leftSwipeGesture.direction = UISwipeGestureRecognizerDirection.left
        self.swipeLeftView.addGestureRecognizer(leftSwipeGesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !self.isLoggedIn {
            self.performSegue(withIdentifier: "segueToLogin", sender: self)
        }
    }
    
    func configureUI() {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.swipeLeftView.drawLeftSideSemiCircle()
        self.editProfileButton.roundWithWhiteBorder()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "messageCell", for: indexPath) as! MessageCell
        cell.lblUserName.text = self.userController.users[indexPath.row].name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let collectionViewWidth = self.view.frame.size.width
        let totalCellWidth = CGFloat(320)
        let inset = (collectionViewWidth - totalCellWidth) / 3
        return UIEdgeInsetsMake(0, inset, 0, inset)
    }
    
    @objc func swipedLeft() {
        self.performSegue(withIdentifier: "swipeLeft", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToLogin" {
            let loginVC = segue.destination as! LoginViewController
            loginVC.delegate = self
        }
    }
    
    func setLogIn() {
        self.isLoggedIn = true
    }
    
}
