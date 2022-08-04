//
//  RideViewController.swift
//  First_iOS_App
//
//  Created by Apple on 20/07/22.
//

import UIKit

class RideViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    

    @IBOutlet weak var rideTableViewController: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "UserTableViewCell", bundle: Bundle.main)
        
        self.rideTableViewController.register(nib, forCellReuseIdentifier: "CellID")

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID") as? UserInfoTableViewCell;
        
    
        
        return cell!;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
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

/*
 
 name
 email
 phonn
 address
 image
 
 
 */
