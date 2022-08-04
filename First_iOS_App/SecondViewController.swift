//
//  SecondViewController.swift
//  First_iOS_App
//
//  Created by Apple on 05/07/22.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.passwordTextField.placeholder = "Enter Password";
        self.emailTextField.placeholder = "Enter Email";
        
    }
    
    @IBAction func pushToThird(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if   let loginController = storyboard.instantiateViewController(withIdentifier: "THIRD") as? ThirdViewController {
            self.navigationController?.pushViewController(loginController, animated: true);
        }
    }
    @IBAction func loginAction(_ sender: UIButton) {
        if let text = self.emailTextField.text, text.isEmpty {
            showAlert(message: "Please Enter Email")
        } else if let text = self.passwordTextField.text , text.isEmpty {
            showAlert(message: "Please Enter Password")
        }else if self.isValidEmail(email: self.emailTextField.text ?? ""){
            self.showAlert(message: "Please Enter Valid Email")
        }else{
            
        }
    }
    
    func showAlert(message:String)  {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle:.alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { action in
        }
        
        alert.addAction(okAction)
        self.present(alert, animated: true);
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
////mahesh@gmail.com
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return !emailPred.evaluate(with: email)
    }
    
    /*
     func functionName(paramerterName: parameterType,.......) -> returnType {
     
     
     }
     
     void
     
     */
    
    
    
//
//    func <#name#>(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
//
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
}
