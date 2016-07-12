//
//  FirstViewController.swift
//  JumpToUITabBarController
//
//  Created by zrit on 16/7/11.
//  Copyright © 2016年 YS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        self.title = "首页"
        
        let btn = UIButton()
        btn.frame.size = CGSizeMake(100, 30)
        btn.center = view.center
        btn.setTitle("跳转下一页", forState: .Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn.addTarget(self, action: #selector(FirstViewController.Jump), forControlEvents: .TouchUpInside)
        view.addSubview(btn)

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        self.hidesBottomBarWhenPushed = true
    }
    override func viewDidDisappear(animated: Bool) {
        self.hidesBottomBarWhenPushed = false
    }
    
    func Jump() {
        self.navigationController?.pushViewController(FirstSubViewController(), animated: true)
    }

    

}
