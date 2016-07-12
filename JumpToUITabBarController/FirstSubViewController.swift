//
//  FirstSubViewController.swift
//  JumpToUITabBarController
//
//  Created by zrit on 16/7/11.
//  Copyright © 2016年 YS. All rights reserved.
//

import UIKit

class FirstSubViewController: UIViewController {
    
    var JumpToProduct:Bool = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "首页的下一页"
        view.backgroundColor = UIColor.whiteColor()
        
        
        let btn = UIButton()
        btn.frame.size = CGSizeMake(100, 30)
        btn.center = view.center
        btn.setTitle("跳转下一页", forState: .Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn.addTarget(self, action: #selector(FirstSubViewController.Jump), forControlEvents: .TouchUpInside)
        view.addSubview(btn)
        
        let btn1 = UIButton()
        btn1.frame.size = CGSizeMake(180, 30)
        btn1.center = CGPoint(x: 200, y: 200)
        btn1.setTitle("跳转产品分类", forState: .Normal)
        btn1.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn1.addTarget(self, action: #selector(FirstSubViewController.Jump1), forControlEvents: .TouchUpInside)
        view.addSubview(btn1)

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        self.hidesBottomBarWhenPushed = true
    }
    //解决2016-07-11 14:57:36.026 JumpToUITabBarController[19439:2427941] Unbalanced calls to begin/end appearance transitions for <JumpToUITabBarController.FirstSubViewController: 0x7f87a2dc00f0>.
    
    override func viewWillDisappear(animated: Bool) {
        if JumpToProduct {
            super.viewWillDisappear(true)
            self.navigationController?.popToRootViewControllerAnimated(false)
            JumpToProduct = false
        }
        
    }
    

    func Jump() {
        self.navigationController?.pushViewController(FirstSubSubViewController(), animated: true)
    }
    
    
    func Jump1() {
        JumpToProduct = true
        self.tabBarController?.selectedIndex = 1
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        }

    }
    
    
   
    

  


