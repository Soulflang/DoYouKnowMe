//
//  StartGameViewController.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 12/10/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    

    @IBOutlet weak var player1Text: UITextField!
    @IBOutlet weak var player2Text: UITextField!
    @IBOutlet weak var player1Image: UIImageView!
    @IBOutlet weak var player2Image: UIImageView!
    

    
    
    @IBAction func loginButton(_ sender: UIButton) {
        print("startButtonPressed")
        if player1Text.text == "" || player2Text.text == "" {
            let alert = UIAlertController(title: "Name missing",
                                          message: "You need to enter two names, in order to play",
                                          preferredStyle: .alert)
            
            let saveAction = UIAlertAction(title: "Okay",
                                           style: .default)
            alert.addAction(saveAction)
            present(alert, animated: true)

        }
        else if player1Text.text == player2Text.text{
            let alert = UIAlertController(title: "Names identical",
                                          message: "Names must not be identical, please enter two different names",
                                          preferredStyle: .alert)
            
            let saveAction = UIAlertAction(title: "Okay",
                                           style: .default)
            alert.addAction(saveAction)
            present(alert, animated: true)
        }
        else{
            let name1 = player1Text.text!
            let name2 = player2Text.text!
            Game.sharedInstance.player1Name.append(name1)
            Game.sharedInstance.player2Name.append(name2)
            self.navigationController?.pushViewController(QuestionsSelectionViewController(), animated: true)
        }
    }
    
    @IBAction func phototest(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
            
        }else {
            print("Camera not available")
        }
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            if takeImageOfP1 {
                player1Image.image = pickedImage
                
                Game.sharedInstance.player1Image = pickedImage
            }else {
                player2Image.image = pickedImage
                Game.sharedInstance.player2Image = pickedImage
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
    var takeImageOfP1 = true
    @objc func p1ImagePressed(sender: UITapGestureRecognizer){
        print("p1 tapped")
        takeImageOfP1 = true
        takePicture()
    }
    
    @objc func p2ImagePressed(sender: UITapGestureRecognizer){
        print("p2 tapped")
        takeImageOfP1 = false
        takePicture()
    }
    
    
    
    func takePicture() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            self.present(imagePicker, animated: true, completion: nil)
            
        }else {
            print("Camera not available")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Adding tap actions to images
        let p1ImageTap = UITapGestureRecognizer()
        p1ImageTap.addTarget(self, action: #selector(self.p1ImagePressed))
        player1Image.addGestureRecognizer(p1ImageTap)
        
        let p2ImageTap = UITapGestureRecognizer()
        p2ImageTap.addTarget(self, action: #selector(self.p2ImagePressed))
        player2Image.addGestureRecognizer(p2ImageTap)
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

}
