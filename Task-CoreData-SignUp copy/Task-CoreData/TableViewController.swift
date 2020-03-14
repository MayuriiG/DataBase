//
//  TableViewController.swift
//  Task-CoreData
//
//  Created by Mayurii Gajbhiye on 12/03/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class TableViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
   
    var indexflow = Int()
    var arrDisplay = [UserDetails]()

    @IBOutlet weak var tbviewContainer: UITableView!
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
        arrDisplay = DataBaseHelper.delegt.fetchData()
    }
    

    
    
    
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 1
      }
      
    
    
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
          
          cell.textLabel?.text = arrDisplay[indexflow].name
          cell.detailTextLabel?.text = arrDisplay[indexflow].password
          return cell
      }
    
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }

    
    
    
}
