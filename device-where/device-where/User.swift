//
//  User.swift
//  device-where
//
//  Created by Stefanie Seah on 30/7/17.
//  Copyright © 2017 Stefanie Seah. All rights reserved.
//

import Foundation

class User {
    
    var name: String
    var emailAddress: String
    var devices: [Device] = []
    
    init(name: String, emailAddress: String) {
        self.name = name
        self.emailAddress = emailAddress
    }
    
}
