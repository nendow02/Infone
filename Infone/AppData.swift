//
//  Data.swift
//  Infone
//
//  Created by Nathan Endow on 8/16/20.
//  Copyright © 2020 Nathan Endow. All rights reserved.
//

import Foundation


class AppData {
    static let shared = AppData()
    
    var rowInfo = [
        //order in table:[item:result]
        0:["Device":"iPhone 11 Pro"],
        1: ["Released":"2019"],
        2:["test":"testr"],
        3:["test2":"test2r"],
        4:["test3":"test3r"]
    ]
    let sectionInfo = [
        // order in table:[rows in section:"Title"]
        0:[3:"About"],
        1:[2:"Test"]
    ]
}
