//
//  Device.swift
//  device-where
//
//  Created by Stefanie Seah on 30/7/17.
//  Copyright © 2017 Stefanie Seah. All rights reserved.
//

import Foundation

class Device {
    
    var model: String
    var serialNumber: String
    var colour: String
    var systemVersion: String
    var currentUser: User?
    
    init(model: String, serialNumber: String, colour: String, systemVersion: String) {
        self.model = model
        self.serialNumber = serialNumber
        self.colour = colour
        self.systemVersion = systemVersion
    }
    
}
