//
//  ViewController.swift
//  WayOfChainCreateUIDemo
//
//  Created by 刘隆昌 on 2017/11/15.
//  Copyright © 2017年 刘隆昌. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UILabel()
        .addToHere(toSuperView: view)
        .layout { (make) in
            make.left.right.equalTo(view)
            make.top.equalTo(100)
            make.height.equalTo(40)
            }
        .config { (label) in
            label.backgroundColor = UIColor.clear
            label.font = UIFont.systemFont(ofSize: 20)
            label.textColor = UIColor.darkGray
            label.text = "Label";
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

