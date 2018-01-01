//
//  UserController.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/12/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import UIKit

class UserController: NSObject {
    var users = [
        User(username: "sasanim", password: "password123!", name: "Sasani Mhkize", age: 20, location: "Los Angeles", gender: "Male", lookingFor: "Women", occupation: "Entreprenuer"),
        User(username: "christo", password: "password123!", name: "Chris Tomlin", age: 24, location: "Los Angeles", gender: "Male", lookingFor: "Women", occupation: "Chef"),
        User(username: "ssimon", password: "password123!", name: "Simple Simon", age: 27, location: "Los Angeles", gender: "Male", lookingFor: "Women", occupation: "Nurse"),
        User(username: "jacked", password: "password123!", name: "Jack Edwards", age: 23, location: "Los Angeles", gender: "Male", lookingFor: "Women", occupation: "Personal Trainer"),
        User(username: "somedude", password: "password123!", name: "Some Dude", age: 27, location: "Los Angeles", gender: "Male", lookingFor: "Women", occupation: "Financial Advisor"),
        User(username: "anaj", password: "password123!", name: "Ana Jacobson", age: 23, location: "Los Angeles", gender: "Female", lookingFor: "Men", occupation: "Photographer")
    ]
    
    func addUser(newUser: User) {
        self.users.append(newUser)
    }
    
    
}
