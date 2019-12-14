//
//  CompletedView.swift
//  TO-DO
//
//  Created by 황다현 on 2019/12/14.
//  Copyright © 2019 황다현. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarView: UITabBarController {

    var nextUpViewController: UIViewController = NextUpViewController()
    var inProgressViewController: UIViewController = InProgressViewController()
    var completedViewController: UIViewController = CompletedViewController()

    var superView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        superView = self.view

        nextUpViewController.view.backgroundColor = UIColor.white
        inProgressViewController.view.backgroundColor = UIColor.white
        completedViewController.view.backgroundColor = UIColor.white

        nextUpViewController.tabBarItem = UITabBarItem(title: "Next Up", image: nil, selectedImage: nil)
        inProgressViewController.tabBarItem = UITabBarItem(title: "InProgress", image: nil, selectedImage: nil)
        completedViewController.tabBarItem = UITabBarItem(title: "Completed", image: nil, selectedImage: nil)

        let controllers = [nextUpViewController, inProgressViewController, completedViewController]
        self.viewControllers = controllers.map {
            UINavigationController(rootViewController: $0)
        }

        self.title = self.selectedViewController?.title
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
}
