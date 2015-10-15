//
//  ViewController.swift
//  第一个UI
//
//  Created by 徐遵成 on 15/10/11.
//  Copyright © 2015年 Jude. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let view1 = UIView(frame: CGRectMake(20, 20, 200, 200))
        view1.bounds = CGRectMake(-20, -20, 240, 240)
        view1.backgroundColor = UIColor.redColor()
        self.view.addSubview(view1)
        
        print(view1.frame)
        print(view1.bounds)
        
        
        let view2 = UIView(frame: CGRectMake(0, 0, 100, 100))
        view2.backgroundColor = UIColor.yellowColor()
        view1.addSubview(view2)
        
        print(view2.frame)
        print(view2.bounds)

        
    
    }
    
    
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

