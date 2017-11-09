//
//  JoinGameViewController.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 18/10/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class JoinGameViewController: UIViewController {
    
    @IBOutlet weak var createGameOutlet: UIButton!
    
    
    @IBAction func createGameButton(_ sender: UIButton) {
        let viewController: UIViewController = StartGame() as UIViewController;
        //self.present(viewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        UIView.animate(withDuration: 1, delay: 0.0, options: [], animations: {
//            self.createGameOutlet.alpha = 1.0
//            }, completion: nil)
//
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        createGameOutlet.alpha = 0.0
//    }
//
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
