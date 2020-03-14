//
//  NextViewController.swift
//  Task-CoreData
//
//  Created by Mayurii Gajbhiye on 12/03/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    var i  = Int()
    
    var  fetchArry = [UserDetails]()
    
    @IBOutlet weak var userEmail_ID: UITextField!
    
    @IBOutlet weak var userPasword: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
     
   
        fetchArry =  DataBaseHelper.delegt.fetchData()//fetch data
        print(fetchArry[6].emailid)//om@gmail.com
    }
    
    @IBAction func signIn(_ sender: UIButton) {

           verifyingEmailndPassword()
  
    }
    
    
    
    func verifyingEmailndPassword(){
    
    
        for i in 0..<fetchArry.count{
            
            if userPasword.text! == fetchArry[i].password! &&
                userEmail_ID.text! == fetchArry[i].emailid!{
 
                
        let nv2 = self.storyboard?.instantiateViewController(identifier: "TableViewController")as! TableViewController
                 
                nv2.indexflow = i
        //  present(nv, animated: true, completion: nil)
        self.navigationController?.pushViewController(nv2, animated: true)
                
            break
                
            }else{
                
                print("Match not found")
            }
            
            
            
            
        }
    
    
    }
    
}
