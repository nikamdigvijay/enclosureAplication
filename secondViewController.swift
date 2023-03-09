//
//  secondViewController.swift
//  enclosureApplication
//
//  Created by Mac on 09/02/23.
//

import UIKit
import  MaterialComponents.MaterialTextFields

class secondViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    @IBOutlet weak var sendCodeButtonView: UIView!
    
    @IBOutlet weak var sendCodeButton: UIButton!
    
    @IBOutlet weak var svcbackButton: UIButton!
    
    @IBOutlet weak var nameTextField: MDCTextField!
    
    @IBOutlet weak var phoneTextField: MDCTextField!
    
    
    var secondScreentextController1 : MDCTextInputControllerOutlined!
    
    var secondScreentextController2 : MDCTextInputControllerOutlined!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.textColor = UIColor(red: 0.62, green: 0.651, blue: 0.725, alpha: 1)
        
        nameTextField.placeholderLabel.text = "Name"
        
        phoneTextField.placeholderLabel.text = "Phone Number"
        phoneTextField.clearButtonMode = .never
        
        navigationItem.hidesBackButton = false
        
      //  phoneTextField.text = " "
    
        
        // Mark: SecondScreen Name TextField
        
        self.secondScreentextController1 = MDCTextInputControllerOutlined(textInput: nameTextField)
        self.secondScreentextController1.textInsets(UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
      // self.secondScreentextController1.borderStrokeColor = .blue
        self.secondScreentextController1.borderRadius = 15
        self.secondScreentextController1.borderStrokeColor = UIColor(red: 0.62, green: 0.651, blue: 0.725, alpha: 1)
        
        // Mark: SecondScreen PhoneNumber TextField
        
        self.secondScreentextController2 = MDCTextInputControllerOutlined(textInput: phoneTextField)
        self.secondScreentextController2.textInsets(UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
        self.secondScreentextController2.borderRadius = 15
        self.secondScreentextController2.floatingPlaceholderActiveColor = UIColor(red: 0.012, green: 0.184, blue: 0.376, alpha: 1)

        // Mark: Verify Button And View
        
        self.sendCodeButtonView.backgroundColor = UIColor(red: 0.012, green: 0.184, blue: 0.376, alpha: 1)
        sendCodeButtonView.layer.cornerRadius = 15
        sendCodeButtonView.layer.shadowColor = UIColor(red: 0.789, green: 0.929, blue: 0.992, alpha: 1).cgColor
    }
    
    @IBAction func sendCodeButton(_ sender: Any) {
        let thirdScreen = self.storyboard?.instantiateViewController(withIdentifier: "thirdViewController") as! thirdViewController
        let passPhoneText = phoneTextField.text
        thirdScreen.phoneText = passPhoneText
        navigationController?.pushViewController(thirdScreen, animated: true)
    }
    
    @IBAction func svcBackButton(_ sender: Any) {
        
        let fristScreen = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        navigationController?.popToViewController(fristScreen, animated: true)
    }
    
}
