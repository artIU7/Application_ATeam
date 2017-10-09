//
//  PostsCollectionControllerCell.swift
//  Application_ATeam
//
//  Created by Артем Стратиенко on 09.10.17.
//  Copyright © 2017 Артем Стратиенко. All rights reserved.
//

import Foundation
import UIKit
class PostsCollectionControllerCell : UITableViewCell {
    //posts
    @IBOutlet weak var TitlePosts: UILabel!
    @IBOutlet weak var BodyPosts: UILabel!
    //comments
    @IBOutlet weak var NameComments: UILabel!
     @IBOutlet weak var MailComments: UILabel!
     @IBOutlet weak var BodyComments: UILabel!
    //users
 @IBOutlet weak var NameUsers1: UILabel!
    @IBOutlet weak var NameUsers2: UILabel!
        @IBOutlet weak var NameUsers3: UILabel!
            @IBOutlet weak var NameUsers4: UILabel!
                @IBOutlet weak var NameUsers5: UILabel!
    //photo
    @IBOutlet weak var TitlePhotos: UILabel!
    @IBOutlet weak var UrlPhotos: UILabel!
     @IBOutlet weak var ImagePhotos: UIImageView!
    //todos
    @IBOutlet weak var TitleTodos: UILabel!
    @IBOutlet weak var CompletedTodos: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
