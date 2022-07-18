//
//  HomePostTableViewCell.swift
//  InstagramClone
//
//  Created by Admin on 13/07/22.
//

import UIKit

class HomePostTableViewCell: UITableViewCell {

    //@IBOutlet weak var collectionView: UICollectionView!
    //@IBOutlet weak var collectionImageView: UIImageView!
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = 50/2
        profileImage.layer.borderWidth = 1
        profileImage.layer.borderColor = UIColor.red.cgColor
           
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
