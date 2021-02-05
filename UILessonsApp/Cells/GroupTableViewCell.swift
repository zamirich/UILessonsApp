//
//  GroupTableViewCell.swift
//  UILessonsApp
//
//  Created by Zamir Argashokov on 05.02.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var myGroupNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
