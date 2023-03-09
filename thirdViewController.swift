//
//  thirdViewController.swift
//  enclosureApplication
//
//  Created by Mac on 10/02/23.
//

import UIKit
import MaterialComponents.MaterialTextFields
class thirdViewController: UIViewController {

    @IBOutlet weak var enterCodeLabel: UILabel!
    
    @IBOutlet weak var phoneNumberTextLabel: UILabel!
    
    @IBOutlet weak var didntRecieveLabel: UILabel!
    
    @IBOutlet weak var verifyBtnView: UIView!
    
    var phoneText : String?
    
    var phoneNumTextField : String?
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterCodeLabel.textColor = UIColor(red: 0.62, green: 0.651, blue: 0.725, alpha: 1)
        
        didntRecieveLabel.textColor = UIColor(red: 0.62, green: 0.651, blue: 0.725, alpha: 1)
        
        self.verifyBtnView.backgroundColor = UIColor(red: 0.012, green: 0.184, blue: 0.376, alpha: 1)
        verifyBtnView.layer.cornerRadius = 15
        verifyBtnView.layer.shadowColor = UIColor(red: 0.789, green: 0.929, blue: 0.992, alpha: 1).cgColor
        
        phoneNumberTextLabel.text = phoneText


    }

}
