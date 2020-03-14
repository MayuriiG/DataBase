//
//  ViewController.swift
//  Task-CoreData
//
//  Created by Mayurii Gajbhiye on 12/03/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {


    
    
    
  // var arrEntryDetails = [UserDetails]()
    
    @IBOutlet weak var firstName: UITextField!
        
    @IBOutlet weak var paswrd: UITextField!
    
    @IBOutlet weak var emailID: UITextField!
    
    @IBOutlet weak var phoneNo: UITextField!
    
    @IBOutlet weak var profesion: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
    
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        print(path)
    
        
    }
    
    
    @IBAction func loginBtn(_ sender: Any) {
  
        
        let nvi = self.storyboard?.instantiateViewController(identifier: "NextViewController")as! NextViewController
                            //  present(nv, animated: true, completion: nil)
        self.navigationController?.pushViewController(nvi, animated: true) //nv with back button
     
    }

    @IBAction func btnTapped(_ sender: UIButton) {

//part2  ..making dictionary

    let dictData:[String:String] = ["fName":firstName.text!,"pasword":paswrd.text!,"mail":emailID.text!,"mobil":phoneNo.text!,"profes":profesion.text!]     //optional text- so unwrapped !
    
        
       //accessing to coredata //DataBaseHelper.delegt.saveData()

        print("clicked")        //calling the data
        print(dictData.count)
    
        
    if firstName.text != "" && paswrd.text != ""  && emailID.text != "" &&  phoneNo.text != ""  && profesion.text != ""  {
            
       DataBaseHelper.delegt.saveData(data: dictData) 
    let nv = self.storyboard?.instantiateViewController(identifier: "NextViewController")as! NextViewController
                            //  present(nv, animated: true, completion: nil)
         self.navigationController?.pushViewController(nv, animated: true)//nvwithbackbutton
        }else{
            print("Alert - Fill the textfield")
        }
    }
    
    

}

