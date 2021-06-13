//
//  BaseViewController.swift
//  DSWeiBo
//
//  Created by 刘星 on 16/7/24.
//  Copyright © 2016年 LiuXing. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController {
    // 标记是否登录
    var isLogin: Bool = false
    override func loadView() {
        isLogin ? super.loadView() : setupVisitorView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK:- 懒加载
    private lazy var visitorView: VisitorView = {
        let visitorView = VisitorView.visitorView()
        return visitorView
    }()
}
// MARK: - 设置未登录视图
extension BaseViewController {
    private func setupVisitorView() {
        view = visitorView
    }
}