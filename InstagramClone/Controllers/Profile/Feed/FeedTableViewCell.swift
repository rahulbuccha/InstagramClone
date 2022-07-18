//
//  FeedTableViewCell.swift
//  InstagramClone
//
//  Created by Admin on 18/07/22.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view2Bottom: NSLayoutConstraint!
    @IBOutlet weak var view3Bottom: NSLayoutConstraint!
    @IBOutlet weak var view1Bottom: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func button1Clicked(_ sender: Any) {
        view1.isHidden = false
        view2.isHidden = true
        view3.isHidden = true
        
        view1Bottom.constant = 5.0
        view2Bottom.constant = 0
        view3Bottom.constant = 0
    }
    @IBAction func button2Clicked(_ sender: Any) {
        view1.isHidden = true
        view2.isHidden = false
        view3.isHidden = true
        
        view1Bottom.constant = 0
        view2Bottom.constant = 5.0
        view3Bottom.constant = 0
        
    }
    @IBAction func button3Clicked(_ sender: Any) {
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = false
        
        view1Bottom.constant = 0
        view2Bottom.constant = 0
        view3Bottom.constant = 5.0
    }
}
