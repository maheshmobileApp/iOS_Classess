//
//  LoginViewController.swift
//  First_iOS_App
//
//  Created by Apple on 04/07/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushToSecond(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if   let loginController = storyboard.instantiateViewController(withIdentifier: "SECOND") as? SecondViewController {
            self.navigationController?.pushViewController(loginController, animated: true);
        }
    }
    @IBAction func backAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true);
        //1-2-3-4-5-6
        //6-5 -popViewController
        //6-1
       // self.navigationController?.popToRootViewController(animated: true)
        //6-3
        
       // self.navigationController?.popToViewController(, animated: <#T##Bool#>)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
