//
//  VisitorView.swift
//  DSWeiBo
//
//  Created by 刘星 on 16/7/24.
//  Copyright © 2016年 LiuXing. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    // MARK:- xib加载
    class func visitorView() -> VisitorView {
        return NSBundle.mainBundle().loadNibNamed("VisitorView", owner: nil, options: nil).first as! VisitorView
    }
    // MARK:- 属性
    @IBOutlet weak var rotationView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    // 设置方法
    func setVisitorViewInfo(iconName: String, title: String) {
        iconImageView.image = UIImage(named: iconName)
        messageLabel.text = title
        rotationView.hidden = true
    }
    // 添加动画
    func addRotationAnmianl() {
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnim.fromValue = 0
        rotationAnim.toValue = M_PI * 2
        rotationAnim.repeatCount = MAXFLOAT
        rotationAnim.duration = 6
        rotationAnim.removedOnCompletion = false
        rotationView.layer.addAnimation(rotationAnim, forKey: nil)
    }
}
