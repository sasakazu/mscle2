//
//  menuViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/06.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class menuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let muneItem = ["ベンチ"]
    let udeItem = [ "ダンベル" ]
    let senakaItem = [ "懸垂" ]
    let haraItem = [ "腹筋" ]
    let ashiItem = [ "デットリフト" ]
    
    let menuSection = [ "胸","腕", "背中", "腹", "足" ]
    
    
    @IBOutlet weak var menuTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        menuTableView.dataSource = self
        menuTableView.delegate = self
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return menuSection.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")

        
        if indexPath.section == 0 {
            cell.textLabel?.text = "\(muneItem[indexPath.row])"
            
        } else if indexPath.section == 1 {
            
            cell.textLabel?.text = "\(udeItem[indexPath.row])"
            
        } else if indexPath.section == 2 {
            
            cell.textLabel?.text = "\(senakaItem[indexPath.row])"
            
        } else if indexPath.section == 3 {
            
            cell.textLabel?.text = "\(ashiItem[indexPath.row])"
            
        } else if indexPath.section == 4 {
            
            cell.textLabel?.text = "\(haraItem[indexPath.row])"
        }
        
        
        return cell
    }
    
    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        
     
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return menuSection[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return muneItem.count
        } else if section == 1 {
            return udeItem.count
            
        } else if section == 2 {
            return senakaItem.count
            
        } else if section == 3 {
            return ashiItem.count
            
        } else if section == 4 {
            return haraItem.count
            
        } else {
            return 0
        }
    }

    
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    


}
