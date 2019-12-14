//
//  BaseViewController.swift
//  TO-DO
//
//  Created by 황다현 on 2019/12/15.
//  Copyright © 2019 황다현. All rights reserved.
//

import UIKit

class BaseTableViewController : UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

public extension NSObject{
    class var nameOfClass: String{
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }

    var nameOfClass: String{
        return NSStringFromClass(type(of: self)).components(separatedBy: ".").last!
    }
}
