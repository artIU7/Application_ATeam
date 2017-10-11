//
//  ViewController.swift
//  Application_ATeam
//
//  Created by Артем Стратиенко on 09.10.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    // variable
    
    @IBOutlet weak var ViewCard1: CardView!
    @IBOutlet weak var ViewCard2: CardView!
    @IBOutlet weak var ViewCard3: CardView!
    @IBOutlet weak var ViewCard4: CardView!
    @IBOutlet weak var ViewCard5: CardView!

    @IBOutlet weak var MainView: UIView!
    // Post_Elements

    @IBOutlet weak var titlePosts: UILabel!
    @IBOutlet weak var bodyPosts: UILabel!
    //@IBOutlet weak var titlePosts: UILabel!
    //@IBOutlet weak var bodyPosts: UILabel!
    // Comments Elements
    @IBOutlet weak var nameComments: UILabel!
    @IBOutlet weak var bodyComments: UILabel!
    //  Users Elements
    @IBOutlet weak var nameUser1: UILabel!
    @IBOutlet weak var nameUser2: UILabel!
    @IBOutlet weak var nameUser3: UILabel!
    @IBOutlet weak var nameUser4: UILabel!
    @IBOutlet weak var nameUser5: UILabel!
    // Photo Elements
    @IBOutlet weak var ImageJSON: UIImageView!
    //  Todos Elements
    @IBOutlet weak var TodosEvent: UILabel!
    @IBOutlet weak var TodosStatus: UILabel!
    //
    @IBAction func InsertPostsID(_ sender: UIButton)
    {
        let PostsIDValue = InsertValueID(jStruct: "POSTS", mID: "100", limitID: 100, function: callJSONReqestionPosts)
    }
    //
    @IBAction func InsertCommentsID(_ sender: UIButton)
    {
        let CommentsIDValue = InsertValueID(jStruct: "COMMENTS", mID: "500", limitID: 500, function: callJSONReqestionComments)
    }
    
    
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
MainView.sizeToFit()
    ViewCard1.sizeToFit()
        ViewCard2.sizeToFit()
            ViewCard3.sizeToFit()
                 ViewCard4.sizeToFit()
                     ViewCard5.sizeToFit()
        // call function gettinf JSON data from service
       callJSONReqestionPosts(idPOST: 1)
        callJSONReqestionComments (idCOMMENTS: 1)
            callJSONReqestionUsers()
                callJSONReqestionPhotos()
                    callJSONReqestionTodos()
    }
    // func getting Posts Elements
    func callJSONReqestionPosts (idPOST : Int) {// -> String {
        let PostsJSON = LoadJSONData()
        PostsJSON.loadData(API_URL: "http://jsonplaceholder.typicode.com/posts/",numberPost: idPOST)
        Alamofire.request(PostsJSON.API_URL, method: .get, parameters: PostsJSON.parameters, encoding: URLEncoding.default, headers: PostsJSON.headerParameters)
            .responseJSON
            { response in
                if let JSON:[String:Any] = response.result.value as? [String:Any]
                {
                    let mainObject:[String:Any] = JSON
                    // TitlePosts
                    let titleString : String = (mainObject["title"] as? String)!
                    self.titlePosts.text = titleString
                    let bodyString : String = (mainObject["body"] as? String)!
                    self.bodyPosts.text = bodyString
                }
    }
       // return titleString
    }
    // func getting Comments Elements
    func callJSONReqestionComments (idCOMMENTS : Int) {// -> String {
        let PostsJSON = LoadJSONData()
        PostsJSON.loadData(API_URL: "http://jsonplaceholder.typicode.com/comments/",numberPost: idCOMMENTS)
        Alamofire.request(PostsJSON.API_URL, method: .get, parameters: PostsJSON.parameters, encoding: URLEncoding.default, headers: PostsJSON.headerParameters)
            .responseJSON
            { response in
                if let JSON:[String:Any] = response.result.value as? [String:Any]
                {
                    let mainObject:[String:Any] = JSON
                    // TitlePosts
                    let nameComments: String = (mainObject["name"] as? String)!
                    self.nameComments.text = nameComments
                    let bodyComments : String = (mainObject["body"] as? String)!
                    self.bodyComments.text = bodyComments
                }
        }
    }
    //// func getting Posts Users
    func callJSONReqestionUsers () {// -> String {
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
                                        
                                        self.nameUser1.text = NameString//"Leanne Graham"
                                    } else if intl == 2 {
                                       
                                        self.nameUser2.text = NameString//"Ervin Howell"
                                    } else if intl == 3 {
                                        
                                        self.nameUser3.text = NameString//"Deckow-Crist"
                                    } else if intl == 4 {
                                        
                                        self.nameUser4.text = NameString//"Clementine Bauch"
                                    } else if intl == 5 {
                                        
                                        self.nameUser5.text = NameString//"Patricia Lebsack"
                                    }
                                }
                }
        }
        // return titleString
    }
    //
    //// func getting Posts Photos
     func callJSONReqestionPhotos () {// -> String {
    let PostsJSON = LoadJSONData()
    PostsJSON.loadData(API_URL: "http://jsonplaceholder.typicode.com/photos/",numberPost: 3)
    Alamofire.request(PostsJSON.API_URL, method: .get, parameters: PostsJSON.parameters, encoding: URLEncoding.default, headers: PostsJSON.headerParameters)
    .responseJSON
    { response in
    if let JSON:[String:Any] = response.result.value as? [String:Any]
    {
    let mainObject:[String:Any] = JSON
        let urlString : String = (mainObject["url"] as? String)!
            let url = URL(string: urlString)
                let imageData = try? Data(contentsOf: url as! URL)
                    self.ImageJSON.image = UIImage(data: imageData!)//UIImage(data: imgData as Data)
                }
            }
        }
    //// func getting Posts Todos
    func callJSONReqestionTodos () {// -> String {
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
        self.TodosEvent.text = titleString
    // BodyPosts
    let completedString : Bool = (mainObject["completed"] as? Bool)!
    // BodyPosts JSONData
        self.TodosStatus.text = String(completedString)
                    }
                }
            }
    //
    // function put and valid ID for Posts/Comments
    func InsertValueID(jStruct : String,mID : String, limitID : Int, function : @escaping (Int)->()) -> Int {
        var valueID = Int()
        let alert = UIAlertController(title: "Введите ID" + jStruct, message: "Count less" + mID, preferredStyle: .alert)
        let errorID = UIAlertController(title: "Ошибка ввода ID", message: "Введите заново", preferredStyle: .actionSheet)
        
        errorID.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: {(_) -> Void in
            self.present(alert, animated: true, completion: nil)
        }))
        
        let saveAction = UIAlertAction(title: "Применить", style: .default) { (_) -> Void in
            
            let textField = alert.textFields?[0]
                let idvalid = textField?.text
                    valueID  = Int(idvalid!)!
            
                        if  valueID > limitID {
                            self.present(errorID, animated: true, completion: nil)
                        } else {
                            function(valueID)
            //self.callJSONReqestionPosts(idPOST: valueID)
            }
                        }
        alert.addTextField { (_) -> Void in
        }
        alert.addAction(saveAction)
        
        self.present(alert, animated: true, completion: nil)
            return valueID
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

