//
//  LemonProfileViewController.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/28/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import UIKit
import MobileCoreServices

class LemonProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var sendMessageButton: UIButton!
    @IBOutlet weak var sendRequestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI()
    }
    
    func configureUI() {
        self.sendMessageButton.roundWithWhiteBorder()
        self.sendRequestButton.roundWithWhiteBorder()
    }
    
    @IBAction func recordVideoMessageTapped(_ sender: UIButton) {
        startCamera()
    }
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func startCamera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) == true {
            let cameraController = UIImagePickerController()
            cameraController.delegate = self
            cameraController.sourceType = .camera
            cameraController.mediaTypes = [kUTTypeMovie as String]
            cameraController.allowsEditing = false
            self.present(cameraController, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Whoops!", message: "Unable to access the camera on your device", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    

}
