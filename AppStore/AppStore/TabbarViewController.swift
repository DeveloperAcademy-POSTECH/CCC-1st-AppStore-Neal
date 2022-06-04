//
//  TabbarViewController.swift
//  AppStore
//
//  Created by yudonlee on 2022/06/02.
//

import UIKit

class TabbarViewController: UITabBarController {
    let todayIcon = UIImage(systemName: "doc.text.image")
    let gameIcon = UIImage(systemName: "airplane.departure")
    let appIcon = UIImage(systemName: "square.stack.3d.up.fill")

    override func viewDidLoad() {
        super.viewDidLoad()
        let todayView = TodayViewController()
        let gameView = GameViewController()
        let appView = AppViewController()
        todayView.title = "투데이"
        gameView.title = "게임"
        appView.title = "앱"
        let navigationTodayView = UINavigationController(rootViewController: todayView)
        let navigationgameView = UINavigationController(rootViewController: gameView)
        let navigationAppView = UINavigationController(rootViewController: appView)
        navigationTodayView.tabBarItem = UITabBarItem(title: "투데이", image: todayIcon, tag: 1)
        navigationgameView.tabBarItem = UITabBarItem(title: "게임", image: gameIcon, tag: 2)
        navigationAppView.tabBarItem = UITabBarItem(title: "앱", image: appIcon, tag: 2)
        setViewControllers([navigationTodayView, navigationgameView, navigationAppView], animated: false)
    }
}
