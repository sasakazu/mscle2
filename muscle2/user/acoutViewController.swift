//
//  acoutViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/06.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class acoutViewController: UIViewController {

    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let user = Auth.auth().currentUser
        
        if let user = user {
            let uid = user.uid
            let email = user.email
            let photoURL = user.photoURL
            // ...
        }
        
        mailLabel.text = user?.email
        
    }

    @IBAction func logoutTapped(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            
            print("sign out done")
            
        } catch let signOutError as NSError {
            
            print ("Error signing out: %@", signOutError)
        }
        
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
