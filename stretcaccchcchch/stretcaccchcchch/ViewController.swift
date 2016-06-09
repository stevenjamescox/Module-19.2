//
//  ViewController.swift
//  stretcaccchcchch
//
//  Created by Steve Cox on 6/9/16.
//  Copyright © 2016 SteveCox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        StarshipController.getShip { (starships) in
            <#code#>
        }
        
        
    }

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    


}

