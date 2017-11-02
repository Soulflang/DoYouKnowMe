//
//  CreateGameViewController.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 18/10/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class StartGame: UIViewController {
    
    @IBAction func selectQuestions(_ sender: UIButton) {
        let viewController: UIViewController = SelectQuestionsView() as UIViewController
        self.present(viewController,animated:true, completion: nil)
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
