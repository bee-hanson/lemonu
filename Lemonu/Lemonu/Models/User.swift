//
//  User.swift
//  Lemonu
//
//  Created by Melissa Hanson on 11/12/17.
//  Copyright © 2017 Melissa Hanson. All rights reserved.
//

import UIKit

class User: NSObject {
    var username = String()
    var password = String()
    var name = String()
    var age = 0
    var location = String()
    var gender : String
    var lookingFor : String
    var occupation : String
    
    init(username : String, password: String, name: String, age: Int, location: String, gender: String, lookingFor: String, occupation: String) {
        self.username = username
        self.password = password
        self.name = name
        self.age = age
        self.location = location
        self.gender = gender
        self.lookingFor = lookingFor
        self.occupation = occupation
    }
    
    
}
