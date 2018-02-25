//
//  Networking.swift
//  Earthquake Tracker
//
//  Created by Zachary Rose on 2/24/18.
//  Copyright © 2018 Zachary Rose. All rights reserved.
//

import Foundation

class Quake : NSObject {
    
    
    // Shared Session
    var session = URLSession.shared
    
    // MARK: Inits
    override init() {
        super.init()
        session = URLSession.shared
    }
    
    
    
}
