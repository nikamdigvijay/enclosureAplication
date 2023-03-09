//
//  ViewController.swift
//  enclosureApplication
//
//  Created by Mac on 09/02/23.
//

import UIKit
import MaterialComponents.MaterialTextFields
import MaterialComponents.MaterialButtons
import MaterialComponents

class ViewController: UIViewController
{
    
    @IBOutlet weak var languageTextField: MDCTextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var SubmitButtonView: UIView!
    
 //   @IBOutlet weak var pickerView: UIPickerView!
    
    var textController1 : MDCTextInputControllerOutlined!

    var text1 = ["Marathi","Hindi","Enlish"]
    
    var pickerView = UIPickerView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        
        languageTextField.placeholderLabel.text = "Language"
        languageTextField.textColor = UIColor.blue
        
        self.SubmitButtonView.backgroundColor = UIColor(red: 0.012, green: 0.184, blue: 0.376, alpha: 1)
        SubmitButtonView.layer.cornerRadius = 15
    
        

        self.textController1 = MDCTextInputControllerOutlined(textInput: languageTextField)
        self.textController1.textInsets(UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
       // self.textController1.borderStrokeColor = .red
        self.textController1.borderRadius = 15
        self.textController1.floatingPlaceholderActiveColor = UIColor(red: 0.012, green: 0.184, blue: 0.376, alpha: 1)
       // self.textController1. = UIColor(red: 0.012, green: 0.184, blue: 0.376, alpha: 1)
        //self.textController1.borderStrokeColor = UIColor(red: 0.012, green: 0.184, blue: 0.376, alpha: 1)
        
        submitButton.layer.cornerRadius = 15
        submitButton.setTitleColor(.white, for: .normal)
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        pickerView.layer.position = .zero
        pickerView.sizeToFit()
        
        languageTextField.inputView = pickerView
        
    }
    @IBAction func submitButton(_ sender: Any) {
        let secondScreen = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        navigationController?.pushViewController(secondScreen, animated: true)
    }
}
extension ViewController: UIPickerViewDelegate,UIPickerViewDataSource {
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return text1.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String
    {
        return text1[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        languageTextField.text = text1[row]
        languageTextField.resignFirstResponder()
    }
}



