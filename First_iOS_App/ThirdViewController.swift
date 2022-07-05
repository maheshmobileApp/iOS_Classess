//
//  ThirdViewController.swift
//  First_iOS_App
//
//  Created by Apple on 05/07/22.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func backToLogin(_ sender: Any) {
       // print(self.navigationController?.viewControllers)
        for cntl in self.navigationController!.viewControllers as Array{
            if cntl .isKind(of: LoginViewController.self)  {
                self.navigationController?.popToViewController(cntl, animated: true)
                return
            }
        }
        /*
         [<First_iOS_App.ViewController: 0x7ff6df70b6f0>,
         <First_iOS_App.LoginViewController: 0x7ff6e0f0f650>,
         <First_iOS_App.SecondViewController: 0x7ff6e0c21470>
         , <First_iOS_App.ThirdViewController: 0x7ff6e0a0fdc0>]
         */
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
