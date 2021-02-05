//
//  FriendCollectionViewCell.swift
//  UILessonsApp
//
//  Created by Zamir Argashokov on 02.02.2021.
//

import UIKit

class FriendCollectionViewCell: UICollectionViewCell {

//    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //TODO this did not work (photo still squarred)
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
        
    }

}
