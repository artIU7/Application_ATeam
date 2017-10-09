//
//  PostsCollectionController.swift
//  Application_ATeam
//
//  Created by Артем Стратиенко on 09.10.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation
import UIKit

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

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "PostsID", for: indexPath) as! PostsCollectionControllerCell
        
        // Configure the cell...
        if indexPath.section == 0 {
            if indexPath.row == 0{
                cell.TitlePosts.text = "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
                cell.BodyPosts.text = "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
                //cell.imageHeaderCollection.image = UIImage(named: "placeHeader_mod")
            }
        } else if indexPath.section == 1{
            cell = tableView.dequeueReusableCell(withIdentifier: "CommentsID", for: indexPath) as! PostsCollectionControllerCell
            if indexPath.row == 0{
                cell.NameComments.text = "id labore ex et quam laborum"
                cell.MailComments.text = "Eliseo@gardner.biz"
                cell.BodyComments.text = "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
                //cell.imageHeaderCollection.image = UIImage(named: "placeHeader_mod")
                }
        } else if indexPath.section == 2{
            cell = tableView.dequeueReusableCell(withIdentifier: "UsersID", for: indexPath) as! PostsCollectionControllerCell
            if indexPath.row == 0{
                cell.NameUsers1.text = "Leanne Graham"
                    cell.NameUsers1.text = "Ervin Howell"
                        cell.NameUsers1.text = "Deckow-Crist"
                            cell.NameUsers1.text = "Clementine Bauch"
                                    cell.NameUsers1.text = "Patricia Lebsack"
            }
        } else if indexPath.section == 3{
            cell = tableView.dequeueReusableCell(withIdentifier: "PhotosID", for: indexPath) as! PostsCollectionControllerCell
            if indexPath.row == 0{
                cell.TitlePhotos.text = "accusamus beatae ad facilis cum similique qui sunt"
                    cell.ImagePhotos.image = UIImage(named: "placeHeader_mod")
            }
        } else if indexPath.section == 4{
            cell = tableView.dequeueReusableCell(withIdentifier: "TodosID", for: indexPath) as! PostsCollectionControllerCell
            if indexPath.row == 0{
                
                cell.TitleTodos.text = "et porro tempora"
                cell.CompletedTodos.text = "Completed :" + "True"
            }
        }
        return cell
    }
    //
   /* if indexPath.section == 0 {
    if indexPath.row == 0{
    cell.Title.text = "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
    cell.Body.text = "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    //cell.imageHeaderCollection.image = UIImage(named: "placeHeader_mod")
    }
    } else if indexPath.section == 1{
    cell = tableView.dequeueReusableCell(withIdentifier: "postsID", for: indexPath) as! CollectionCardsCell
    if indexPath.row == 0{
    cell.imageHeaderCollection.image = UIImage(named: "placeHeader_mod")
    }
    } else if indexPath.section == 2{
    cell = tableView.dequeueReusableCell(withIdentifier: "commentsID", for: indexPath) as! CollectionCardsCell
    if indexPath.row == 0{
    cell.imageHeaderCollection.image = UIImage(named: "placeHeader_mod")
    cell.fff.text = "Displays a rounded rectangle that can contain editable text. When a user taps a text field, a keyboard appears; when a user taps Return in the keyboard, the keyboard disappears and the text field can handle the input in an application-specific way. UITextField supports overlay views to display additional information, such as a bookmarks icon. UITextField also provides a clear text control a user taps to erase the contents of the text field."
    }
    } else if indexPath.section == 3{
    cell = tableView.dequeueReusableCell(withIdentifier: "photoID", for: indexPath) as! CollectionCardsCell
    if indexPath.row == 0{
    cell.imageHeaderCollection.image = UIImage(named: "placeHeader_mod")
    }
    } else /*if indexPath.section == 4*/{
    cell = tableView.dequeueReusableCell(withIdentifier: "todosID", for: indexPath) as! CollectionCardsCell
    if indexPath.row == 0{
    cell.imageHeaderCollection.image = UIImage(named: "placeHeader_mod")
    }
    }
    return cell
}*/
    //
    
}
