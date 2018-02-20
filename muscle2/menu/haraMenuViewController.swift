//
//  haraMenuViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/20.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class haraMenuViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    let haraItem = [ "腹筋" ]
    
    @IBOutlet weak var haraTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        haraTableView.dataSource = self
        haraTableView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return haraItem.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "haraCell")
        
        cell.textLabel?.text = haraItem[indexPath.row]
        
        return cell
    }
    


}
