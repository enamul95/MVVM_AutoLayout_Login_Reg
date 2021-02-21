//
//  CustomAlert.swift
//  MMVMExample
//
//  Created by Enamul Haque on 2/21/21.
//

import Foundation
import UIKit

extension UIAlertController{
    static func alert(title:String, message:String, viewcontroller:UIViewController){
        let myalert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        myalert.addAction(UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            print("Selected")
        })
        viewcontroller.present(myalert , animated: true, completion: nil)
    }
}
