//
//  UserViewModel.swift
//  MVVM+Json
//
//  Created by Yogesh Patel on 4/8/20.
//  Copyright © 2020 Yogesh Patel. All rights reserved.
//

import UIKit
import Alamofire

class UserViewModel{
    
    weak var vc: ViewController?
    var arrUsers = [UserModel]()
    
    func getAllUsreDataAF(){
        print("calling-->")
        AF.request("https://jsonplaceholder.typicode.com/todos/").response { response in
            print(response.data)
            if let data = response.data {
              
                do{
                    let userResponse = try JSONDecoder().decode([UserModel].self, from: data)
                    self.arrUsers.append(contentsOf: userResponse)
                    DispatchQueue.main.async{
                    self.vc?.tblView.reloadData()
                    }
                }catch let err{
                    print("error-->"+err.localizedDescription)
                }
            }
        }
    }
    
    func getAllUserData(){
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/todos/")!) { (data, response, error) in
            if error == nil{
                if let data = data {
                    do{
                        let userResponse = try JSONDecoder().decode([UserModel].self, from: data)
                        self.arrUsers.append(contentsOf: userResponse)
                        DispatchQueue.main.async{
                            self.vc?.tblView.reloadData()
                        }
                    }catch let err{
                        print(err.localizedDescription)
                    }
                }
            }else{
                print(error?.localizedDescription)
            }
        }.resume()
    }
}
