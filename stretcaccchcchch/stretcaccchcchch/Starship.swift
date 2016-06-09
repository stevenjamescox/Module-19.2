//
//  Starship.swift
//  stretcaccchcchch
//
//  Created by Steve Cox on 6/9/16.
//  Copyright © 2016 SteveCox. All rights reserved.
//

import Foundation

class Starship {
    
    private let kName = "name"
    private let kModel = "model"
    private let kMan = "manufacturer"
    
    let name: String
    let model: String
    let man: String
    
    
    /********************/
    /*  GENERIC INIT */
    /********************/
    
    init(name: String, model: String, man: String) {
        self.name = name
        self.model = model
        self.man = man
    }
    
    /********************/
    /*  GET INIT */
    /********************/
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary[kName] as? String,
            model = dictionary[kModel] as? String,
            man = dictionary[kMan] as? String else {
                return nil
        }
        self.name = name
        self.model = model
        self.man = man
    }
    
}

