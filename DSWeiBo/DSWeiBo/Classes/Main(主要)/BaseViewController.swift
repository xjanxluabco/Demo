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
        setNavgationItems()
    }
    // MARK:- 懒加载
//    private lazy var visitorView: VisitorView = {
//        let visitorView = VisitorView.visitorView()
//        return visitorView
//    }()
    lazy var visitorView: VisitorView = {
        let visitorView = VisitorView.visitorView()
        return visitorView
    }()
}
// MARK: - 设置UI
extension BaseViewController {
    // 未登录视图
    private func setupVisitorView() {
        view = visitorView
        visitorView.registerButton.addTarget(self, action: #selector(BaseViewController.registerButtonClick), forControlEvents: .TouchUpInside)
        visitorView.loginButton.addTarget(self, action: #selector(BaseViewController.loginButtonClick), forControlEvents: .TouchUpInside)
    }
    // 
    private func setNavgationItems() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "注册", style: .Plain, target: self, action: #selector(BaseViewController.registerButtonClick))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: .Plain, target: self, action: #selector(BaseViewController.loginButtonClick))
    }
}
// MARK: - action
extension BaseViewController {
    @objc private func registerButtonClick() {
        print("registerButtonClick")
    }
    @objc private func loginButtonClick() {
        print("loginButtonClick")
    }
}