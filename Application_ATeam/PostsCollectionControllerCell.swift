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
    
    // info - contacts
    
    @IBOutlet weak var parametr: UILabel!
    @IBOutlet weak var value: UILabel!
    //
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
