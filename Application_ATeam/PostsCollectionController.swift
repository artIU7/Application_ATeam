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
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections.
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return 1
    }
   //
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "PostsID", for: indexPath) as! PostsCollectionControllerCell
        // Configure the cell...
        if indexPath.section == 0 {
            let PostsJSON = LoadJSONData()
            PostsJSON.loadData(API_URL: "http://jsonplaceholder.typicode.com/posts/",numberPost: 12)
            Alamofire.request(PostsJSON.API_URL, method: .get, parameters: PostsJSON.parameters, encoding: URLEncoding.default, headers: PostsJSON.headerParameters)
                .responseJSON
                { response in
                    if let JSON:[String:Any] = response.result.value as? [String:Any]
                    {
                        let mainObject:[String:Any] = JSON
                        // TitlePosts
                        let titleString : String = (mainObject["title"] as? String)!
                        // TitlePosts JSONData
                        cell.TitlePosts.lineBreakMode = NSLineBreakMode.byWordWrapping
                        cell.TitlePosts.numberOfLines = 0
                        cell.TitlePosts.setNeedsDisplay()
                        cell.TitlePosts.text = titleString
                        // BodyPosts
                        let bodyString : String = (mainObject["body"] as? String)!
                        // BodyPosts JSONData
                        cell.BodyPosts.lineBreakMode = NSLineBreakMode.byWordWrapping
                        cell.BodyPosts.numberOfLines = 0
                        cell.BodyPosts.setNeedsDisplay()
                        cell.BodyPosts.text = bodyString
                    }
            }
        } else if indexPath.section == 1{
            cell = tableView.dequeueReusableCell(withIdentifier: "CommentsID", for: indexPath) as! PostsCollectionControllerCell
            let PostsJSON = LoadJSONData()
            PostsJSON.loadData(API_URL: "http://jsonplaceholder.typicode.com/comments/",numberPost: 12)
            Alamofire.request(PostsJSON.API_URL, method: .get, parameters: PostsJSON.parameters, encoding: URLEncoding.default, headers: PostsJSON.headerParameters)
                .responseJSON
                { response in
                    if let JSON:[String:Any] = response.result.value as? [String:Any]
                    {
                let mainObject:[String:Any] = JSON
                let NameString : String = (mainObject["name"] as? String)!
                cell.NameComments.lineBreakMode = NSLineBreakMode.byWordWrapping
                cell.NameComments.numberOfLines = 0
                cell.NameComments.setNeedsDisplay()
                cell.NameComments.text = NameString//"id labore ex et quam laborum"
                //
               // cell.MailComments.lineBreakMode = NSLineBreakMode.byWordWrapping
               // cell.MailComments.numberOfLines = 0
              //  cell.MailComments.setNeedsDisplay()
               // cell.MailComments.text = "Eliseo@gardner.biz"
                //
                let BodyString : String = (mainObject["body"] as? String)!
                cell.BodyComments.lineBreakMode = NSLineBreakMode.byWordWrapping
                cell.BodyComments.numberOfLines = 0
                cell.BodyComments.setNeedsDisplay()
                cell.BodyComments.text = BodyString//"laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
                //cell.imageHeaderCollection.image = UIImage(named: "placeHeader_mod")
                    }
            }
        } else if indexPath.section == 2{
            cell = tableView.dequeueReusableCell(withIdentifier: "UsersID", for: indexPath) as! PostsCollectionControllerCell
            let PostsJSON = LoadJSONData()
            
                    for intl in 1...5
                {
            PostsJSON.loadData(API_URL: "http://jsonplaceholder.typicode.com/users/",numberPost: intl)
            Alamofire.request(PostsJSON.API_URL, method: .get, parameters: PostsJSON.parameters, encoding: URLEncoding.default, headers: PostsJSON.headerParameters)
                .responseJSON
                { response in
                    if let JSON:[String:Any] = response.result.value as? [String:Any]
                    {
                        let mainObject:[String:Any] = JSON
                        let NameString : String = (mainObject["name"] as? String)!
                        //=======================================
                        if intl == 1{
                        cell.NameUsers1.lineBreakMode = NSLineBreakMode.byWordWrapping
                        cell.NameUsers1.numberOfLines = 0
                        cell.NameUsers1.setNeedsDisplay()
                        cell.NameUsers1.text = NameString//"Leanne Graham"
                        } else if intl == 2 {
                            cell.NameUsers2.lineBreakMode = NSLineBreakMode.byWordWrapping
                            cell.NameUsers2.numberOfLines = 0
                            cell.NameUsers2.setNeedsDisplay()
                            cell.NameUsers2.text = NameString//"Ervin Howell"
                        } else if intl == 3 {
                            cell.NameUsers3.lineBreakMode = NSLineBreakMode.byWordWrapping
                            cell.NameUsers3.numberOfLines = 0
                            cell.NameUsers3.setNeedsDisplay()
                            cell.NameUsers3.text = NameString//"Deckow-Crist"
                        } else if intl == 4 {
                            cell.NameUsers4.lineBreakMode = NSLineBreakMode.byWordWrapping
                            cell.NameUsers4.numberOfLines = 0
                            cell.NameUsers4.setNeedsDisplay()
                            cell.NameUsers4.text = NameString//"Clementine Bauch"
                        } else if intl == 5 {
                            cell.NameUsers5.lineBreakMode = NSLineBreakMode.byWordWrapping
                            cell.NameUsers5.numberOfLines = 0
                            cell.NameUsers5.setNeedsDisplay()
                            cell.NameUsers5.text = NameString//"Patricia Lebsack"
                        }
                    }
            }
    }
        } else if indexPath.section == 3{
            cell = tableView.dequeueReusableCell(withIdentifier: "PhotosID", for: indexPath) as! PostsCollectionControllerCell
            let PostsJSON = LoadJSONData()
            PostsJSON.loadData(API_URL: "http://jsonplaceholder.typicode.com/photos/",numberPost: 6)
            Alamofire.request(PostsJSON.API_URL, method: .get, parameters: PostsJSON.parameters, encoding: URLEncoding.default, headers: PostsJSON.headerParameters)
                .responseJSON
                { response in
                    if let JSON:[String:Any] = response.result.value as? [String:Any]
                    {
                        let mainObject:[String:Any] = JSON
                        let urlString : String = (mainObject["url"] as? String)!
                        let url = URL(string: urlString)
                        let imageData = try? Data(contentsOf: url as! URL)
                        cell.ImagePhotos.image = UIImage(data: imageData!)//UIImage(data: imgData as Data)
            }
        }
    }
        else if indexPath.section == 4{
            cell = tableView.dequeueReusableCell(withIdentifier: "TodosID", for: indexPath) as! PostsCollectionControllerCell
            let PostsJSON = LoadJSONData()
            PostsJSON.loadData(API_URL: "http://jsonplaceholder.typicode.com/todos/",numberPost: 6)
            Alamofire.request(PostsJSON.API_URL, method: .get, parameters: PostsJSON.parameters, encoding: URLEncoding.default, headers: PostsJSON.headerParameters)
                .responseJSON
                { response in
                    if let JSON:[String:Any] = response.result.value as? [String:Any]
                    {
                        let mainObject:[String:Any] = JSON
                        
                        // TitlePosts
                        let titleString : String = (mainObject["title"] as? String)!
                        // TitlePosts JSONData
                        cell.TitleTodos.lineBreakMode = NSLineBreakMode.byWordWrapping
                        cell.TitleTodos.numberOfLines = 0
                        cell.TitleTodos.setNeedsDisplay()
                        cell.TitleTodos.text = titleString
                        // BodyPosts
                        let completedString : Bool = (mainObject["completed"] as? Bool)!
                        // BodyPosts JSONData
                        cell.CompletedTodos.lineBreakMode = NSLineBreakMode.byWordWrapping
                        cell.CompletedTodos.numberOfLines = 0
                        cell.CompletedTodos.setNeedsDisplay()
                        cell.CompletedTodos.text = String(completedString)
        }
    }
}
        return cell
        
    }
}
