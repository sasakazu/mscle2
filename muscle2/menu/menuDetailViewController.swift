//
//  menuDetailViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/06.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class menuDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let muneItem = [ "ベンチプレス", "インクラインベンチプレス", "ダンベルフライ", "ダンベルベンチフライ", "ケーブルクロス" ]
    
    
    @IBOutlet weak var muneTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        muneTableView.dataSource = self
        muneTableView.delegate = self

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return muneItem.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "muneCell")
        
        cell.textLabel?.text = muneItem[indexPath.row]
        
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    
    }
    

  

}
