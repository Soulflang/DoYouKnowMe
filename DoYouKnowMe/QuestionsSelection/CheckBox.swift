//
//  CheckBox.swift
//  DoYouKnowMe
//
//  Created by Mathias  R. Larsen on 18/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit
@IBDesignable
class CheckBox: UIButton {
    
    var checkedImage: UIImage?
    var uncheckedImage: UIImage?
    @IBInspectable var unCheckedImg: UIImage? {
        didSet{
            updateView()
        }
    }
    
    @IBInspectable var CheckedImg: UIImage? {
        didSet{
            updateView()
        }
    }
    
    func updateView(){
        // Images
        self.checkedImage = unCheckedImg
        self.uncheckedImage = CheckedImg
    }
    
    
    
        
        // Bool property
        var isChecked: Bool = false {
            didSet{
                if isChecked == true {
                    self.setImage(checkedImage, for: UIControlState.normal)
                } else {
                    self.setImage(uncheckedImage, for: UIControlState.normal)
                }
            }
        }
    
    
    
    
    
    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControlEvents.touchUpInside)
        self.isChecked = false
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}
