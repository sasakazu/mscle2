//
//  udeMenuViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/18.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class udeMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let udeItem = [ "ダンベルカール", "ダンベルコンセントレーションカール", "フレンチプレス", "リストカール", "プリチャーカール" ]

    
    @IBOutlet weak var udeTableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        udeTableview.dataSource = self
        udeTableview.delegate = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return udeItem.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "udeCell")
        
        cell.textLabel?.text = udeItem[indexPath.row]
        
        return cell
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
