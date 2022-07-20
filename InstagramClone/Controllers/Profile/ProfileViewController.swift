//
//  ProfileViewController.swift
//  InstagramClone
//
//  Created by Admin on 11/07/22.
//

import UIKit
import CarbonKit

class ProfileViewController: UIViewController, CarbonTabSwipeNavigationDelegate {
  
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker","rahul"]
    
    @IBOutlet weak var mainView: UIView!
    
    var controllernames = ["Post", "Reels", "Taggeed"]
    var carbonSwipeNavigation = CarbonTabSwipeNavigation()
    
    //TableView outlet
    @IBOutlet weak var profileTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Tableview Delegates
        
        profileTableView.delegate = self
        profileTableView.dataSource = self
        profileTableView.separatorStyle = .none
        
        //MARK: carbonkit delegates
        
        carbonSwipeNavigation = CarbonTabSwipeNavigation(items: controllernames, delegate: self)
        carbonSwipeNavigation.insert(intoRootViewController: self, andTargetView: mainView)
        
        carbonSwipeNavigation.carbonSegmentedControl?.setWidth(view.frame.width / 3, forSegmentAt: 0)
        carbonSwipeNavigation.carbonSegmentedControl?.setWidth(view.frame.width / 3, forSegmentAt: 1)
        carbonSwipeNavigation.carbonSegmentedControl?.setWidth(view.frame.width / 3, forSegmentAt: 2)
        
        carbonSwipeNavigation.setNormalColor(UIColor.lightGray)
        carbonSwipeNavigation.setSelectedColor(UIColor.darkGray)

    }
    //Carbon kit functions
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        guard let storyboard = storyboard else { return UIViewController() }
        if index == 0{
            return storyboard.instantiateViewController(withIdentifier: "PostViewController")
        }
        else if index == 1{
            return storyboard.instantiateViewController(withIdentifier: "ReelsViewController")
        }
        else{
            return storyboard.instantiateViewController(withIdentifier: "TaggedViewController")
        }
    }
    
}

//MARK: Extension table View
extension ProfileViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0){
            return 265
        }
        else{
            return 100
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0){
            let cell = profileTableView.dequeueReusableCell(withIdentifier: "EditProfileTableViewCell") as! EditProfileTableViewCell
            cell.selectionStyle = .none
            
            return cell
        }
        else {
            let cell = profileTableView.dequeueReusableCell(withIdentifier: "EditStoryTableViewCell") as!EditStoryTableViewCell
            
            
            return cell
        }
//        else {
//            let cell = profileTableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell") as! FeedTableViewCell
//
//            return cell
//        }
        
    }

}
