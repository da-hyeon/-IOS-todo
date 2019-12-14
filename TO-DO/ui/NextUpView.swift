//
//  NextUpView.swift
//  TO-DO
//
//  Created by 황다현 on 2019/12/14.
//  Copyright © 2019 황다현. All rights reserved.
//

import Foundation
import UIKit

class NextUpView  : BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "NextUp"

    }
}

extension NextUpView {
    func initUI() {
        view.setNeedsUpdateConstraints()
    }
}