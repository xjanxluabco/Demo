//
//  UIButton+Category.swift
//  DSWeiBo
//
//  Created by 刘星 on 16/7/24.
//  Copyright © 2016年 LiuXing. All rights reserved.
//

import UIKit

extension UIButton {
    // 类方法
//    class func creatButtonWith(imageName: String, bgImageName: String) -> UIButton {
//        let button = UIButton()
//        button.setImage(UIImage(named: imageName), forState: .Normal)
//        button.setImage(UIImage(named: imageName + "_highlighted"), forState: .Highlighted)
//        button.setBackgroundImage(UIImage(named: bgImageName), forState: .Normal)
//        button.setBackgroundImage(UIImage(named: bgImageName + "_highlighted"), forState: .Highlighted)
//        button.sizeToFit()
//        return button
//    }
    // 构造方法，Swift建议用
    convenience init (imageName: String, bgImageName: String) {
        self.init()
        setImage(UIImage(named: imageName), forState: .Normal)
        setImage(UIImage(named: imageName + "_highlighted"), forState: .Highlighted)
        setBackgroundImage(UIImage(named: bgImageName), forState: .Normal)
        setBackgroundImage(UIImage(named: bgImageName + "_highlighted"), forState: .Highlighted)
        sizeToFit()
    }
}
