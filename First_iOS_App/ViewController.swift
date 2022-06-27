//
//  ViewController.swift
//  First_iOS_App
//
//  Created by Apple on 30/05/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
   @IBOutlet weak var pressBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //setPropertiesToLabel()
        self.inputTextField.delegate = self;
        self.inputTextField.becomeFirstResponder();
        
    }
    
    func setPropertiesToLabel(){
        self.nameLbl.text = "Hello Sai";
        self.nameLbl.numberOfLines = 2;
        self.nameLbl.textColor = UIColor.white;
    }

    @IBAction func changeBgColor(_ sender: UIButton) {
        setPropertiesToLabel();
        self.view.backgroundColor = UIColor.green;
        self.nameLbl.text = self.inputTextField.text;
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
}

/*
 
 View Controll life cycle
 
 1. label properties
 2. button properties
 
 //3. alpha
 //4 .number
 //5. 30 max
 
 
 */
