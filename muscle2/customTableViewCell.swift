//
//  customTableViewCell.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/20.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {
    
    @IBOutlet weak var menuitem: UILabel!
    @IBOutlet weak var kgLabel: UILabel!
    @IBOutlet weak var repLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
