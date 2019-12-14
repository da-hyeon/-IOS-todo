//
//  Todo.swift
//  TO-DO
//
//  Created by 황다현 on 2019/12/15.
//  Copyright © 2019 황다현. All rights reserved.
//

import Foundation

class Todo {
    var title : String = ""
    var startDate : String = ""
    var endDate : String = ""

    init(title: String, startDate: String, endDate: String) {
        self.title = title
        self.startDate = startDate
        self.endDate = endDate
    }
}
