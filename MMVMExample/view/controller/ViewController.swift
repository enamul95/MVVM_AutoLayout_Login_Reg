//
//  ViewController.swift
//  MMVMExample
//
//  Created by Enamul Haque on 2/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tblView: UITableView!
    
    var viewModelUser = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
        viewModelUser.vc = self
        viewModelUser.getAllUsreDataAF()
        
    }


}


extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell
        cell?.modelUser = viewModelUser.arrUsers[indexPath.row]
        return cell!
    }
}

