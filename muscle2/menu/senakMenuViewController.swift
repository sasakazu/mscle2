//
//  senakMenuViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/20.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class senakMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
        let senakaItem = [ "懸垂" ]
    
    
    @IBOutlet weak var senakaTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        senakaTableView.dataSource = self
        senakaTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return senakaItem.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "senakaCell")
        
        cell.textLabel?.text = senakaItem[indexPath.row]
        
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
