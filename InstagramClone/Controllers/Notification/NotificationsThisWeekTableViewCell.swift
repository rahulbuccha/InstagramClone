//
//  NotificationsThisWeekTableViewCell.swift
//  InstagramClone
//
//  Created by Admin on 15/07/22.
//

import UIKit

class NotificationsThisWeekTableViewCell: UITableViewCell {

    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        button2.layer.cornerRadius = 15.0
        button3.layer.cornerRadius = 15.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
