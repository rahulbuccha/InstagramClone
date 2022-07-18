//
//  HomeViewController.swift
//  InstagramClone
//
//  Created by Admin on 11/07/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate{

  //  private var collectionView : UICollectionView?
    
    @IBOutlet weak var feedTableView: UITableView!
    
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker","rahul"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedTableView.separatorStyle = .none
    
    }

}

//MARK: Extension for TableViewCell
extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0){
            return 110
        }
        else{
            return 490
        }
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            let cell : StoryTableViewCell = feedTableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath) as! StoryTableViewCell

            return cell
        }

        else{
            
            let cell : HomePostTableViewCell = feedTableView.dequeueReusableCell(withIdentifier: "postCell") as! HomePostTableViewCell
            
            let friend = friends[indexPath.row]
            cell.profileImage.image = UIImage(named: friend)
            cell.profileName.text = friend
            cell.postImage.image = UIImage(named: friend)
            cell.selectionStyle = .none
            return cell
        
        }
    }
    
}

