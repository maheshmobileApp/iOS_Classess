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
    
    @IBAction func navigateToLogin(_ sender: UIButton) {
        //source -> self
        //Destination -> LoginViewController
        print(self.navigationController);
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if   let loginController = storyboard.instantiateViewController(withIdentifier: "LOGIN_ID") as? LoginViewController {
            self.navigationController?.pushViewController(loginController, animated: true);
        }
    
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == inputTextField {
            let charctersSet = CharacterSet(charactersIn: "0123456789@!").inverted;
            //charcters
            if string.rangeOfCharacter(from: charctersSet) != nil {
               return false
            }
        }
      
        return true;
    }
    
}

/*
 
 View Controll life cycle
 
 1. label properties//
 2. button properties
 
 //3. alpha
 //4 .number
 //5. 30 max
 //6. class defination, create any class with 5 properties and create 2 instance function and onn class function
 
 //7. What is diff b/t instance and class function
 //8. class and struct diff
 //9. read about inheritance
 //10. method overriding
 
 //11. a) 1->2->3->4->5, b)  5-4, c)  5-3, d) 5-1
 //12 Create simple login screen with email , password and login button. In this button check the textfields. if empty show the alert
 //13. map,filter,reduce and sor
 //14. add password validation
 
 //14. display the states in tableview
 //15. create tableview with 5 sections a)sections height : 100,320,45,75,100, b) 1:languages,programmig lan
        c) show the alert with selected index and sectionn
 
 //16: Download the post man app into your laptop
 //17: GET vs POST 
  
 
 //push
 //popview- one step back
 //poptorootview - navigate origin(root)
 //poptoviewcontroller-
 /*
  
  1.
  name : 30
  name : only a-z
  
  2.
  
  phone : only numbers
  
  3.
  
  height:
  5.6
  
  
  */
 
 //Navigation
 //source destionation
 
 //one screen to another screen
 
 //1-login-2-3 (a. 3-1, b. 3-login)
 
 
 //x---------------
 //
     
 // x- 100
 //y - 100
 
 //
 
 //Position Constraints
 //TOP
 //Bottom
 //left
 //right
 
 //Size Constraints
 
 //width
 //height
 
 //Align Constraints - > (H,V)
 
 
 
 (top - height/bottom)
 (bottom - height/top)
 (height - top/bottom)
 
 
 (left -  width/right)
 (right - width/left)
 (width - left/right)
)
 
 //Tableview
 
 rows
 colums
 
 
 data-row
 
 names-10
 
 
 
 */
