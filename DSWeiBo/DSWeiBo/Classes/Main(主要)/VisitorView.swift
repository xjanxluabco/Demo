//
//  VisitorView.swift
//  DSWeiBo
//
//  Created by 刘星 on 16/7/24.
//  Copyright © 2016年 LiuXing. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    class func visitorView() -> VisitorView {
        return NSBundle.mainBundle().loadNibNamed("VisitorView", owner: nil, options: nil).first as! VisitorView
    }
}
