//
//  HomeChatViewController.swift
//  InstagramClone
//
//  Created by Admin on 15/07/22.
//

import UIKit

class HomeChatViewController: UIViewController {

    //Outlets for TableView and SearchBar
    @IBOutlet weak var chatTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    //Creating
    let friends = ["man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker","man","mane","woman","womane","panda","hacker"]
    
    var filterData : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterData = friends
        
        chatTableView.delegate = self
        chatTableView.dataSource = self
        chatTableView.separatorStyle = .none
        
        searchBar.delegate = self
    }
    

}

extension HomeChatViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 1){
            return 40
        }
        else if (indexPath.row == 0){
            return 120
        }
        else{
            return 100
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0){
            let cell = chatTableView.dequeueReusableCell(withIdentifier: "HomeChatTableViewCell") as! HomeChatTableViewCell
                
            cell.selectionStyle = .none
            return cell
        }
        else if(indexPath.row == 1){
            let cell = chatTableView.dequeueReusableCell(withIdentifier: "TitleMessageTableViewCell") as! TitleMessageTableViewCell
            
            return cell
        }
        else{
            let cell = chatTableView.dequeueReusableCell(withIdentifier: "HomeTextTableViewCell") as! HomeTextTableViewCell
            let friend = filterData[indexPath.row]
            
            cell.profileImageView.image = UIImage(named: friend)
            cell.profileImageView.layer.cornerRadius = 100/2
            
            cell.userNameLabel.text = friend
            
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
    
    //for onClick Display for the next controllers
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell =  friends[indexPath.row]
        performSegue(withIdentifier: "message", sender: cell)
        
    }
    
    // performing segue b/w two controllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessagesViewController
        let selectedTerm = sender as! String
        vc.term = selectedTerm

    }
    
    
}
// Extension for the SearchBar to filter elements
extension HomeChatViewController : UISearchBarDelegate{
    
    // Function of searchBar working
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterData = []
        if searchText == ""
        {
            filterData = []
        }
        
        for word in friends{
            if word.uppercased().contains(searchText.uppercased()){
                filterData.append(word)
            }
        }
        self.chatTableView.reloadData()
    }
}
