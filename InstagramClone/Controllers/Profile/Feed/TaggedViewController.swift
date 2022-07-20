//
//  TaggedViewController.swift
//  InstagramClone
//
//  Created by Admin on 19/07/22.
//

import UIKit

class TaggedViewController: UIViewController {

    @IBOutlet weak var taggedTableView: UITableView!
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        taggedTableView.delegate = self
        taggedTableView.dataSource = self
        
    }
    
}

extension TaggedViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = taggedTableView.dequeueReusableCell(withIdentifier: "TaggedTableViewCell") as! TaggedTableViewCell
        let friend = friends[indexPath.row]
        cell.image1.image = UIImage(named: friend)
        cell.image2.image = UIImage(named: friend)
        cell.image3.image = UIImage(named: friend)
        
        return cell
    }
    
    
}
