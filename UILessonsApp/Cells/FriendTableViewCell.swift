//
//  FriendTableViewCell.swift
//  UILessonsApp
//
//  Created by Zamir Argashokov on 01.02.2021.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
