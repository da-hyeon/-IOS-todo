//
//  MainTabViewController.swift
//  TO-DO
//
//  Created by 황다현 on 2019/12/14.
//  Copyright © 2019 황다현. All rights reserved.
//

import UIKit

class MainTabBarController: MainTabBarView , UITabBarControllerDelegate {



    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
    }

    //Delegate methods
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        self.title = viewController.title
        return true;
    }

}
