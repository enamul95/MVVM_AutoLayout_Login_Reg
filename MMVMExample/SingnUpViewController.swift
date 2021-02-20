//
//  SingnUpViewController.swift
//  MMVMExample
//
//  Created by Enamul Haque on 2/20/21.
//

import UIKit

class SingnUpViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func btnLogin(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
       
    }
    
    //adjust content with screen
    
      /*  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return UIScreen.main.bounds.height
        }
    */
    //center all screen content like iphone & ipad. but you can not use UIScreen.main.bounds.height
    override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           let tableViewHeight = self.tableView.frame.height
           let contentHeight = self.tableView.contentSize.height
           
           let centeringInset = (tableViewHeight - contentHeight) / 2.0
           let topInset = max(centeringInset, 0.0)
           
           self.tableView.contentInset = UIEdgeInsets(top: topInset, left: 0.0, bottom: 0.0, right: 0.0)
       }
   
}
