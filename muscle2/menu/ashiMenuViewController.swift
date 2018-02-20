//
//  ashiMenuViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/20.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class ashiMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let ashiItem = [ "デットリフト" ]

    @IBOutlet weak var ashiTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ashiTableView.dataSource = self
        ashiTableView.delegate = self

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ashiItem.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "ashiCell")
        
        cell.textLabel?.text = ashiItem[indexPath.row]
        
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
