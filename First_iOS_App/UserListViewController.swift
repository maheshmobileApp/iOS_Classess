//
//  UserListViewController.swift
//  First_iOS_App
//
//  Created by Apple on 25/07/22.
//

import UIKit

class UserListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var userTableview: UITableView!

    var userInfoList : [UserModel] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "UserInfoTableViewCell", bundle: Bundle.main)
        self.userTableview.register(nib, forCellReuseIdentifier: "CellID")
        // Do any additional setup after loading the view.
        userInfoList.append(UserModel(userName: "Kolhi", address: "hyd", number: "45423"))
        userInfoList.append(UserModel(userName: "Rohit", address: "mubai", number: "65464"))
        userInfoList.append(UserModel(userName: "Dhoni", address: "delhi", number: "657576"))
        userInfoList.append(UserModel(userName: "Sachin", address: "hyd", number: "4646"))

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userInfoList.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID") as? UserInfoTableViewCell;
        
        let userInfo = userInfoList[indexPath.row];
        
        cell?.nameLabel.text = userInfo.userName;
        cell?.addressLabel.text = userInfo.userAddress;
        cell?.phoneNumberLabel.text = userInfo.phoneNumber;
        
    
        
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


class UserModel {
    
    let userName: String?
    let userAddress: String?
    let phoneNumber: String?
    
    init(userName:String,address:String,number:String) {
        self.userName = userName;
        self.userAddress = address;
        self.phoneNumber = number;
    }
}

//json - model - tableview

//client(mobile) <--> server

//connection need to establish



//GET
//POST
//PUT
//DELETE
//UPDATE


/*
 
 1. create url string
 
 2. create url from string
 
 3. create request using url (request type,body, headers)
 
 4. create url session to connect server using request
 
 5. handle the api request response
 
 
 
 
 //http://164.52.213.195:8080/salex/get/categories?cityName=Gunupur&stateName=ap
 //GET
 
 //http://164.52.213.195:8080/salex/product/offers?city=Gunupur
 
 
 //BaseUrl/methods?parameters&.....
 
 
 
url:  http://164.52.213.195:8080/salex/generate/otp
Http method type:  POST
 
 body :
 
 {
   "phoneNumber": "8096380032"
 }

 Headders {
 
 
 }
 
 
 
 //Status code
 
 // 200 series ..... succss. valid request
 //400...... error, not valid request
 //500..... server error
 
 
 */
