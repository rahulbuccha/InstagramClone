//
//  EditStoryTableViewCell.swift
//  InstagramClone
//
//  Created by Admin on 14/07/22.
//

import UIKit

class EditStoryTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker","rahul"]

    @IBOutlet weak var editStoryCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        editStoryCollectionView.delegate = self
        editStoryCollectionView.dataSource = self
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        friends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = editStoryCollectionView.dequeueReusableCell(withReuseIdentifier: "EditStoryCollectionViewCell", for: indexPath) as! EditStoryCollectionViewCell
        
        let friend = friends[indexPath.row]
        cell.editStoryImage.image = UIImage(named: friend)
        cell.editStoryImage.layer.cornerRadius = 80/2
        cell.editStoryImage.layer.borderWidth = 2
        cell.editStoryImage.layer.borderColor = UIColor.red.cgColor
        
        return cell
    }
    
    func collectionView(_ UICollectionView : UICollectionView, layout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize{
        return CGSize(width: 100, height: 100)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }


}


