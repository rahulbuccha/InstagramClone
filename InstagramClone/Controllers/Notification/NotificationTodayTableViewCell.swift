//
//  NotificationTodayTableViewCell.swift
//  InstagramClone
//
//  Created by Admin on 15/07/22.
//

import UIKit

class NotificationTodayTableViewCell: UITableViewCell {

    @IBOutlet weak var button1: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        button1.layer.cornerRadius = 15.0
        // Configure the view for the selected state
    }

}
