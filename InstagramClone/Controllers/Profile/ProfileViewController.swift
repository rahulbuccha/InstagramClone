//
//  ProfileViewController.swift
//  InstagramClone
//
//  Created by Admin on 11/07/22.
//

import UIKit

class ProfileViewController: UIViewController {

    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker","rahul"]
    
    @IBOutlet weak var profileTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileTableView.delegate = self
        profileTableView.dataSource = self
        profileTableView.separatorStyle = .none

    }


}

extension ProfileViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0){
            return 270
        }
        else if(indexPath.row == 1){
            return 100
        }
        else{
            return 400
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0){
            let cell = profileTableView.dequeueReusableCell(withIdentifier: "EditProfileTableViewCell") as! EditProfileTableViewCell
            
            return cell
        }
        else if(indexPath.row == 1){
            let cell = profileTableView.dequeueReusableCell(withIdentifier: "EditStoryTableViewCell") as!EditStoryTableViewCell
            
            
            return cell
        }
        else{
            let cell = profileTableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell") as! FeedTableViewCell
            
            return cell
        }
        
//        else{
//            let cell = profileTableView.dequeueReusableCell(withIdentifier: "EditProfileTableViewCell") as! EditProfileTableViewCell
//
//            return cell
//        }
        
    }
    
    

}
