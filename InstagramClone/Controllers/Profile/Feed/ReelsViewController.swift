//
//  ReelsViewController.swift
//  InstagramClone
//
//  Created by Admin on 19/07/22.
//

import UIKit

class ReelsViewController: UIViewController {

    @IBOutlet weak var reelsTableView: UITableView!
    
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reelsTableView.delegate = self
        reelsTableView.dataSource = self
        reelsTableView.separatorStyle = .singleLine
        
    }
 

}

extension ReelsViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = reelsTableView.dequeueReusableCell(withIdentifier: "ReelsTableViewCell") as! ReelsTableViewCell
        let friend = friends[indexPath.row]
        cell.image1.image = UIImage(named: friend)
        cell.image2.image = UIImage(named: friend)
        cell.image3.image = UIImage(named: friend)
        
        return cell
    }
    
    
}
