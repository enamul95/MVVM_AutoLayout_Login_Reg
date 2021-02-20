//
//  LoginViewController.swift
//  MMVMExample
//
//  Created by Enamul Haque on 2/19/21.
//

import UIKit

class LoginViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            let tableViewHeight = self.tableView.frame.height
            let contentHeight = self.tableView.contentSize.height
            
            let centeringInset = (tableViewHeight - contentHeight) / 2.0
            let topInset = max(centeringInset, 0.0)
            
            self.tableView.contentInset = UIEdgeInsets(top: topInset, left: 0.0, bottom: 0.0, right: 0.0)
        }

   

}