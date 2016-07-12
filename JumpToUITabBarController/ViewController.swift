//
//  ViewController.swift
//  JumpToUITabBarController
//
//  Created by zrit on 16/7/11.
//  Copyright © 2016年 YS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tabBar:UITabBarController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //FirsttabBarItem
        let firstVC = FirstViewController()
        firstVC.tabBarItem.title = "首页"
        firstVC.tabBarItem.image = UIImage(named: "jx11")
        let firstNavVC = UINavigationController(rootViewController: firstVC)
        
        //FirsttabBarItem
        let secondVC = SecondViewController()
        secondVC.tabBarItem.title = "产品分类"
        secondVC.tabBarItem.image = UIImage(named: "jx13")
        let secondNavVC = UINavigationController(rootViewController: secondVC)
        
        tabBar = UITabBarController()
        tabBar!.viewControllers = [firstNavVC,secondNavVC]
        let window = UIApplication.sharedApplication().delegate?.window!
        window?.rootViewController = tabBar
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

