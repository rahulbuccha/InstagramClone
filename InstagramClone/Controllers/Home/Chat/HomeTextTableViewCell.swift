//
//  HomeTextTableViewCell.swift
//  InstagramClone
//
//  Created by Admin on 15/07/22.
//

import UIKit

class HomeTextTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func cameraButtonTapped(_ sender: Any) {
    }
}
