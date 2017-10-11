//
//  PostsCollectionController.swift
//  Application_ATeam
//
//  Created by Артем Стратиенко on 09.10.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class PostsCollectionController : UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 150
        tableView.rowHeight = UITableViewAutomaticDimension
   
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return 3
    }
   //
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "contactsID", for: indexPath) as! PostsCollectionControllerCell
        // Configure the cell...
       // if indexPath.section == 0 {
       //
       // }
        if indexPath.row == 0 {
            cell.parametr.text = "ФИО :"
            cell.value.text = "Стратиенко Артем Николаевич"
        } else if indexPath.row == 1 {
            cell.parametr.text = "Телефон :"
            cell.value.text = "+7(929)655-43-47"
        } else if indexPath.row == 2 {
            cell.parametr.text = "Почта :"
            cell.value.text = "stratienko.a@icloud.com"
        }
        return cell
        
    }
}
