//
//  HomeChatTableViewCell.swift
//  InstagramClone
//  Created by Admin on 15/07/22.
//

import UIKit

class HomeChatTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var chatCollectionView: UICollectionView!
    
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker","rahul"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        chatCollectionView.delegate = self
        chatCollectionView.dataSource = self
        
    }
    //MARK: Collection view required functions
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        friends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = chatCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeChatCollectionViewCell", for: indexPath) as! HomeChatCollectionViewCell
        
        let friend = friends[indexPath.row]
        cell.chatImageView.image = UIImage(named: friend)
        cell.chatImageView.layer.cornerRadius = 80/2
        cell.chatImageView.layer.borderWidth = 2
        cell.chatImageView.layer.borderColor = UIColor.green.cgColor
        
        cell.chatNameLabel.text = friend
        
        return cell
    }
    func collectionView(_ UICollectionView : UICollectionView, layout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize{
        return CGSize(width: 100, height: 100)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}

//extension HomePostTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource{
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//
//
//
//}

