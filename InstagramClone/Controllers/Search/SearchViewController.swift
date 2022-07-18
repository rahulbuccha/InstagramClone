//
//  SearchViewController.swift
//  InstagramClone
//
//  Created by Admin on 11/07/22.
//
import PhotosUI
import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchTableView: UITableView!
    
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchTableView.delegate = self
        searchTableView.dataSource = self
        
    }

    @IBAction func addImage(_ sender: UIBarButtonItem) {
        var config = PHPickerConfiguration()
        config.selectionLimit = 3
        config.filter = .images
        
        let phPickerVC = PHPickerViewController(configuration: config)
        phPickerVC.delegate = self
        self.present(phPickerVC, animated: true)
    }
    

}

extension SearchViewController : PHPickerViewControllerDelegate{
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
    }
}

extension SearchViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = searchTableView.dequeueReusableCell(withIdentifier: "searchCell") as! SearchTableViewCell
        let friend = friends[indexPath.row]
        cell.image1.image = UIImage(named: friend)
        cell.image2.image = UIImage(named: friend)
        cell.image3.image = UIImage(named: friend)
        return cell
    }
    
    
}



