//
//  MessagesViewController.swift
//  InstagramClone
//
//  Created by Admin on 18/07/22.
//

import UIKit

class MessagesViewController: UIViewController {

    var term = "Just Checking"
    
    let texts = ["Hii", "Hello", "Works fine"]
    
    @IBOutlet weak var messageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = term
        messageTableView.delegate = self
        messageTableView.dataSource = self
        messageTableView.separatorStyle = .none
    }

}

extension MessagesViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        texts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = messageTableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell") as! MessageTableViewCell
        
        return cell
    }
    
    
}
