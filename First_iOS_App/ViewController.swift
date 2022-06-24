//
//  ViewController.swift
//  First_iOS_App
//
//  Created by Apple on 30/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var pressBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //setPropertiesToLabel()
    }
    
    func setPropertiesToLabel(){
        self.nameLbl.text = "Hello Sai";
        self.nameLbl.numberOfLines = 2;
        self.nameLbl.textColor = UIColor.white;
    }

    @IBAction func changeBgColor(_ sender: UIButton) {
        setPropertiesToLabel();
        self.view.backgroundColor = UIColor.green;
    }
    
    
}

/*
 
 View Controll life cycle
 
 1. label properties
 2. button properties
 3. set button bg color random
 
 */
