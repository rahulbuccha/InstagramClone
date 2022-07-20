//
//  TaggedTableViewCell.swift
//  InstagramClone
//
//  Created by Admin on 19/07/22.
//

import UIKit

class TaggedTableViewCell: UITableViewCell {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        image1.layer.borderWidth = 0.5
        image2.layer.borderWidth = 1
        image3.layer.borderWidth = 1
        
        image1.layer.borderColor = UIColor.gray.cgColor
        image2.layer.borderColor = UIColor.gray.cgColor
        image3.layer.borderColor = UIColor.gray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
