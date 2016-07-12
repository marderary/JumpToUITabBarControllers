//
//  FirstSubSubViewController.swift
//  JumpToUITabBarController
//
//  Created by zrit on 16/7/11.
//  Copyright © 2016年 YS. All rights reserved.
//

import UIKit

class FirstSubSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "首页的下一页的下一页"
        view.backgroundColor = UIColor.whiteColor()

        let btn = UIButton()
        btn.frame.size = CGSizeMake(180, 30)
        btn.center = view.center
        btn.setTitle("跳转到产品分类", forState: .Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn.addTarget(self, action: #selector(FirstSubSubViewController.Jump), forControlEvents: .TouchUpInside)
        view.addSubview(btn)
    }
    
    override func viewDidAppear(animated: Bool) {
        self.hidesBottomBarWhenPushed = true
    }
    
    
    func Jump(){
        self.tabBarController?.selectedIndex = 1
        self.navigationController?.popToRootViewControllerAnimated(true)

    }
    

}
