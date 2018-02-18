//
//  menuViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/06.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class menuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let menuItem = ["胸メニュー", "腕メニュー","背中メニュー","足メニュー","腹メニュー"]
    
    
    @IBOutlet weak var menuTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        menuTableView.dataSource = self
        menuTableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItem.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = menuItem[indexPath.row]
        
        return cell
    }
    
    
    func tableView(_ table: UITableView, didSelectRowAt indexPath:IndexPath) {
        print(menuItem[indexPath.row])
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    


}
