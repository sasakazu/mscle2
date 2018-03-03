//
//  signupViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/22.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class signupViewController: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {


    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passConfirmationTextField: UITextField!
    
    @IBOutlet weak var userImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    
    
    
    
    @IBAction func selectedPicture(_ sender: Any) {
        
        let album = UIImagePickerControllerSourceType.photoLibrary
        if UIImagePickerController.isSourceTypeAvailable(album) {
            let album = UIImagePickerController()
            album.delegate = self
            album.sourceType = UIImagePickerControllerSourceType.photoLibrary
            album.allowsEditing = true
            self.present(album, animated: true, completion: nil)
        }
         
    }
    

    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        self.userImageView.image = image
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func signupTapped(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print("登録できませんでした")
            }
            if let user = user {
                print(user.email! as Any)
                self.dismiss(animated: true, completion: nil)
            } else {
                print("登録できませんですた")
            }
        }
    }
    

  
    
}



