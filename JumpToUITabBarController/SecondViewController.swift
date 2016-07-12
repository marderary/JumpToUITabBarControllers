//
//  SecondViewController.swift
//  JumpToUITabBarController
//
//  Created by zrit on 16/7/11.
//  Copyright © 2016年 YS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "产品分类"
        view.backgroundColor = UIColor.whiteColor()
        
        let btn = UIButton()
        btn.frame.size = CGSizeMake(100, 30)
        btn.center = view.center
        btn.setTitle("产品分类", forState: .Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn.addTarget(self, action: #selector(SecondViewController.Jump), forControlEvents: .TouchUpInside)
        view.addSubview(btn)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func Jump(){
        
    }

    

}
