//
//  HomeViewController.swift
//  InterfaceAdvanced006_HW
//
//  Created by Nurbek on 02/11/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var customTableView: UITableView!
    var dataItems: Array<Data> = Array()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        
        customTableView.dataSource = self
        customTableView.delegate = self
        
        navBar()
        data()
        
    }
    func data() {
        dataItems.append(Data(name: "Nurbek", lastSeen: "few seconds ago...", profileImage: "pfp1", text: "Congratulations on your birthday! Wishing you a truly fabuluous day.", postImage: "post"))
        dataItems.append(Data(name: "Sardor", lastSeen: "two hours ago...", profileImage: "pfp2", text: "Congratulations on your birthday! Wishing you a truly fabuluous day. Hope you are doing well! I hope you write me as soon as you go to your hometown.", postImage: "post"))
    }
    
    // MARK: - Navigation
    func navBar() {
        navigationItem.title = "Table View"
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let data = dataItems[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.selectionStyle = .none
        
        cell.nameLabel.text = data.name
        cell.profileImage.image = UIImage(named: data.profileImage)
        cell.timeLabel.text = data.lastSeen
        cell.contentLabel.text = data.text
//        cell.contentLabel.text =
        cell.postImage.image = UIImage(named: data.postImage)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 450
    }
    
}
