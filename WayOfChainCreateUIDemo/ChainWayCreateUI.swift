//
//  ChainWayCreateUI.swift
//  WayOfChainCreateUIDemo
//
//  Created by 刘隆昌 on 2017/11/15.
//  Copyright © 2017年 刘隆昌. All rights reserved.
//

import Foundation
import UIKit
import SnapKit


protocol ViewChainable {}
extension ViewChainable where Self: UIView{
    @discardableResult
    func config(_ config:(Self)->Void) ->Self{
        config(self)
        return self
    }
}


extension UIView:ViewChainable{
    
    func addToHere(toSuperView:UIView) -> Self {
        toSuperView.addSubview(self)
        return self;
    }
    
    @discardableResult
    func layout(snapKitMaker:(ConstraintMaker)->Void) -> Self{
        self.snp.makeConstraints { (make) in
            snapKitMaker(make)
        }
        return self
    }
    
    
    
}
