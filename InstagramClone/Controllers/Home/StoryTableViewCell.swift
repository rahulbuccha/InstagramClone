//
//  StoryTableViewCell.swift
//  InstagramClone
//
//  Created by Admin on 13/07/22.
//

import UIKit

class StoryTableViewCell: UITableViewCell {
    
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker","rahul"]

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension StoryTableViewCell : UICollectionViewDataSource, UICollectionViewDelegate{
    
     // MARK: Functions for CollectionViews
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return friends.count
        }
    
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! HomePostCollectionViewCell
            
                let friend = friends[indexPath.row]
                cell.collectionStoryImage.image = UIImage(named: friend)
           
            cell.collectionStoryImage.layer.cornerRadius = 80/2
            cell.collectionStoryImage.layer.borderWidth = 2
            cell.collectionStoryImage.layer.borderColor = UIColor.red.cgColor
    
                return cell
        }
        
    func collectionView(_ UICollectionView : UICollectionView, layout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize{
        return CGSize(width: 100, height: 100)
    }
    
}
