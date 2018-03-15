//
//  HomeViewController2.swift
//  FirebaseApp
//
//  Created by hatice kübra kılınç on 28.02.2018.
//  Copyright © 2018 Robert Canton. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class HomeViewConroller2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    
    @IBAction func button(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)

    }
    
/*
     
     @IBAction func hhh(_ sender: Any){
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
        
    }
     
     Auth.auth().signIn(withEmail: email, password: pass) { user, error in
     if error == nil && user != nil {
     self.dismiss(animated: false, completion: nil)
     } else {
     print("Error logging in: \(error!.localizedDescription)")
     }
     }
    */
    
    /*  @IBAction func handleLogout(_ sender:Any) {
 
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
*/

    
}
