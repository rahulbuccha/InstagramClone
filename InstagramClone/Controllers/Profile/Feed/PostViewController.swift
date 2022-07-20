//
//  PostViewController.swift
//  InstagramClone
//
//  Created by Admin on 19/07/22.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var postTableView: UITableView!
    
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postTableView.delegate = self
        postTableView.dataSource = self
        
    }
    

}

extension PostViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = postTableView.dequeueReusableCell(withIdentifier: "PostTableViewCell") as! PostTableViewCell
        let friend = friends[indexPath.row]
        cell.image1.image = UIImage(named: friend)
        cell.image2.image = UIImage(named: friend)
        cell.image3.image = UIImage(named: friend)
        
        return cell
    }
    
    
}
