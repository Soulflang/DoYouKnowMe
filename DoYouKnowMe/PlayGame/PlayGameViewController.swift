//
//  PlayGameViewController.swift
//  DoYouKnowMe
//
//  Created by Mathias  R. Larsen on 09/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class PlayGame: UIViewController {
    
    @IBOutlet weak var PlayerOnePic: UIImageView!
    @IBOutlet weak var PlayerTwoPic: UIImageView!
    @IBOutlet weak var PlayerThreePic: UIImageView!
    @IBOutlet weak var PlayerFourPic: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.PlayerOnePic.layer.cornerRadius = self.PlayerOnePic.frame.size.width / 2
        self.PlayerOnePic.clipsToBounds = true
        self.PlayerOnePic.layer.borderWidth = 3.0
        self.PlayerOnePic.layer.borderColor = UIColor.white.cgColor
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
}
