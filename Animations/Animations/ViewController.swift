//
//  ViewController.swift
//  Animations
//
//  Created by Justin Smith on 6/8/16.
//  Copyright © 2016 Justin Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerImageView: CustomImageView!
    @IBOutlet weak var imageViewHolderView: CustomView!
    @IBOutlet weak var firstLastLabel: UILabel!
    @IBOutlet weak var playerNameLabel: UILabel!
    
    var nextPlayerButton: CustomButton!
    var previousPlayerButton: CustomButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createNextPlayerButton()
        createPreviousPlayerButton()

    }
    
    func createNextPlayerButton(){
        nextPlayerButton = CustomButton(frame: CGRectMake(0, self.view.frame.height - 43, self.view.frame.width, 35))
        nextPlayerButton.backgroundColor = UIColor(red: 0.490, green: 0.992, blue: 0.749, alpha: 1.00)
        nextPlayerButton.setTitle("Next Player", forState: .Normal)
        self.view.addSubview(nextPlayerButton)
    }
    
    func createPreviousPlayerButton(){
        previousPlayerButton = CustomButton(frame: CGRectMake(0, self.view.frame.height - 88, self.view.frame.width, 35))
        previousPlayerButton.backgroundColor = UIColor(red: 0.890, green: 0.492, blue: 0.349, alpha: 1.00)
        previousPlayerButton.setTitle("Previous Player", forState: .Normal)
        self.view.addSubview(previousPlayerButton)
    }
    
    
    
    
    
    
    
    
    
}

