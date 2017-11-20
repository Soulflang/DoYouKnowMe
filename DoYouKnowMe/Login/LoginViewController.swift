//
//  StartGameViewController.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 12/10/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
  
    
    
    @IBOutlet weak var Field1: UITextField!
    @IBOutlet weak var Field2: UITextField!
    @IBOutlet weak var Field3: UIView!
    
    
    
    
    
    @IBAction func loginButton(_ sender: UIButton) {
       
        
        if Field1.text == "" || Field2.text == "" {
            let alert = UIAlertController(title: "Name missing",
                                          message: "You need to enter two names, in order to play",
                                          preferredStyle: .alert)
            
            let saveAction = UIAlertAction(title: "Okay",
                                           style: .default)
            alert.addAction(saveAction)
            present(alert, animated: true)

        }
        else if Field1.text == Field2.text{
            let alert = UIAlertController(title: "Names identical",
                                          message: "Names must not be identical, please enter two different names",
                                          preferredStyle: .alert)
            
            let saveAction = UIAlertAction(title: "Okay",
                                           style: .default)
            alert.addAction(saveAction)
            present(alert, animated: true)
        }
        else{
            let name1 = Field1.text!
            let name2 = Field2.text!
            Game.sharedInstance.player1Name.append(name1)
            Game.sharedInstance.player2Name.append(name2)
            //self.navigationController?.pushViewController(QuestionsSelectionViewController, animated: true)
        }
        
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
 
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
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
