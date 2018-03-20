//
//  Constants.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/03/20.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import Foundation


var todoList:[String]?

func saveData(todoList:[String]) {
    UserDefaults.standard.set(todoList, forKey: "todoList")
    
    
    
}


func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String] {
        return todo
    
    
    
    }

    else {
        return nil
    }

}

