//
//  DataBaseHelper.swift
//  Task-CoreData
//
//  Created by Mayurii Gajbhiye on 12/03/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit
import CoreData

//singleton
class DataBaseHelper: NSObject {
    //nsobject
    
    static var delegt:DataBaseHelper = DataBaseHelper()
        
    
    
    
 // part 1
    //second stage to connect to to app delegate.swift - to access to persistence

let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext //database operation
    //NSManagedobjCONTEXT
    

    
    //part 3
    func saveData(data:[String:String]){
                    ///parameter
    
        //......Saving in core data.................
    let storedData = NSEntityDescription.insertNewObject(forEntityName: "UserDetails", into: context) as! UserDetails
             storedData.name = data["fName"]
             storedData.password = data["pasword"]
             storedData.emailid = data ["mail"]
             storedData.mobileno = data ["mobil"]
             storedData.professin = data["profes"]
        
        do{
            
          try  context.save()
            
            print("Saved Successfully")
        }catch{
            
            
            print("Unable to Save")
        }
    }
  
    
    
    
  //............................Fetch............................
    
    func fetchData() -> [UserDetails] {
      
        
        var arr = [UserDetails]()
        
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "UserDetails")
        
        do{
            arr = try context.fetch(fetchReq)as![UserDetails]
            
            
        }catch{
            
            print("Unable to fetch")
      
        
        
        }
       return arr
    }
    
    
    
    
    
    
    
}


