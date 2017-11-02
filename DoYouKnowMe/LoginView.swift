//
//  StartGameViewController.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 12/10/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class LoginView: UIViewController {

    
    
    @IBAction func loginButton(_ sender: UIButton) {
        let viewController: UIViewController = JoinGameViewController() as UIViewController
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
