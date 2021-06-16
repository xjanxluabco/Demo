//
//  MessageViewController.swift
//  DSWeiBo
//
//  Created by 刘星 on 16/7/23.
//  Copyright © 2016年 LiuXing. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "消息"
        visitorView.setVisitorViewInfo("visitordiscover_image_message", title: "登录后，别人评论你的微博，给你发消息，都会在这里收到通知")
    }
}
