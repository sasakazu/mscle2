//
//  AddController.swift
//  
//
//  Created by 笹倉 一也 on 2018/03/20.
//

import UIKit

class AddController: UIViewController {

    
    
    @IBOutlet weak var addTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func addPressed(_ sender: UIButton) {
        
        if (addTextField.text != nil) && addTextField.text != "" {
            todoList?.append(addTextField.text!)
            addTextField.text = ""
            addTextField.placeholder = "Add More?"
            
        }
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
