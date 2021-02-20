//
//  LoginViewController.swift
//  MMVMExample
//
//  Created by Enamul Haque on 2/19/21.
//

import UIKit

class LoginViewController: UITableViewController {
    @IBOutlet var txtEamil: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        validateCode()
    }
    
   

}

extension LoginViewController {
    
    override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            let tableViewHeight = self.tableView.frame.height
            let contentHeight = self.tableView.contentSize.height
            
            let centeringInset = (tableViewHeight - contentHeight) / 2.0
            let topInset = max(centeringInset, 0.0)
            
            self.tableView.contentInset = UIEdgeInsets(top: topInset, left: 0.0, bottom: 0.0, right: 0.0)
        }
    
    fileprivate func validateCode() {
        if let email = txtEamil.text, let password = txtPassword.text{
            if !email.validateEmailId(){
                openAlert(title: "Alert", message: "Email address not found.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay clicked!")
                }])
            }else if !password.validatePassword(){
                openAlert(title: "Alert", message: "Please enter valid password", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay clicked!")
                }])
            }else{
                // Navigation - Home Screen
            }
        }else{
            openAlert(title: "Alert", message: "Please add detail.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                print("Okay clicked!")
            }])
        }
    }

}
