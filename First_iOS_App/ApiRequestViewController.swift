//
//  ApiRequestViewController.swift
//  First_iOS_App
//
//  Created by Apple on 04/08/22.
//

import UIKit

class ApiRequestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func apiCallAction(_ sender: Any) {
        //https://reqres.in/api/users?page=2
        //Step 1:
        let urlString = "https://reqres.in/api/users?page=2";
        
        //Step 2:
        let url = URL(string: urlString);
        
        //Step 3:
        
        var request = URLRequest(url: url!);
        request.httpMethod = "GET"
        
        
        
        //Step 4:
        
     let session =   URLSession.shared.dataTask(with: request) { data, respons, error in
         
         print(data);
         
         //step 5: convert the data to json
         if let responseData = data {

         do {
             // make sure this JSON is in the format we expect
             if let json = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: Any] {
                 print("result json is \(json)")
             }
         } catch let error as NSError {
             print("Failed to load: \(error.localizedDescription)")
         }
         }
            
        }.resume();
        
        
    

        
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


/**
 
 
 
 1. create url string
 
 2. create url from string
 
 3. create request using url (request type,body, headers)
 
 4. create url session to connect server using request
 
 5. handle the api request response
 
 
 */
