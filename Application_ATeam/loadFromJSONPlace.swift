//
//  loadFromJSONPlace.swift
//  Application_ATeam
//
//  Created by Артем Стратиенко on 09.10.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation
import Alamofire

protocol JSONLoad {
    var numberPost : Int {get}
    var API_URL:String{get}
    var parameters:[String:String]{get}
    var headerParameters:[String:String]{get}
    func loadData(API_URL : String,numberPost:Int)
}
class LoadJSONData : JSONLoad {
    // variable
    var API_URL = String()
    var parameters = [String:String]()
    var headerParameters = [String:String]()
    var numberPost : Int = 1
    
    func loadData(API_URL : String,numberPost:Int) {// -> [String:Any] { //->  Any {
         self.numberPost = numberPost
         self.API_URL  = API_URL + String(numberPost) // "http://jsonplaceholder.typicode.com/posts/" + String(numberPost)
         parameters = ["APPID":"API_KEY"]
         headerParameters = ["HEADER":"JSON"]
        print(parameters)
    }
    }


