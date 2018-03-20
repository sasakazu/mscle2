//
//  menuViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/03/20.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class menuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let menu = ["ベンチ", "プレス"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if let todo = todoList {
            return todo.count
        }
        else {
            return 0
        }

    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        if let todo = todoList {
            cell.textLabel?.text = todo[indexPath.row]
        
        }
        
        
        return cell
        
    }
  
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            todoList?.remove(at: indexPath.row)
            tableView.reloadData()
            
        }
    }
    
    

}
