//
//  NotificationViewController.swift
//  InstagramClone
//
//  Created by Admin on 11/07/22.
//

import UIKit

class NotificationViewController: UIViewController {

    let friends = ["man","mane","woman","womane","panda","hacker","man"]
    
    @IBOutlet weak var notificationTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        notificationTableView.delegate = self
        notificationTableView.dataSource = self
        notificationTableView.separatorStyle = .none
        
    }

}

extension NotificationViewController : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 0 || indexPath.row == 2 || indexPath.row == 4 || indexPath.row == 6){
            return 220
        }
        else{
            return 380
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0 || indexPath.row == 2 || indexPath.row == 4 || indexPath.row == 6){
            let cell = notificationTableView.dequeueReusableCell(withIdentifier: "NotificationTodayTableViewCell") as! NotificationTodayTableViewCell
            cell.selectionStyle = .none
            
            return cell
        }
        else{
            let cell = notificationTableView.dequeueReusableCell(withIdentifier: "NotificationsThisWeekTableViewCell" ) as! NotificationsThisWeekTableViewCell
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
}
