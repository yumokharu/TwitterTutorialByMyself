//
//  MainTabController.swift
//  TwitterTutorialByMyself
//
//  Created by 차유민 on 2023/08/09.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: - Properties
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        configureViewControlloer()
    }
    
    // MARK: - Selector
    
    @objc func actionButtonTapped() {
        print(123)
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingRight: 16, paddingBottom: 64, height: 56, width: 56)
        actionButton.layer.cornerRadius = 56 / 2
    }
    
    
    
    // 탭바를 구성하는 구성요소들
    func configureViewControlloer() {
        
        let feed = FeedController()
        let nav1 = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feed)
       
        
        let explore = ExploreController()
        let nav2 = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explore)
        
        
        let notifications = NotificationsController()
        let nav3 = templateNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notifications)
        
        
        let conversations = ConversationsController()
        let nav4 = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: conversations)
        
        
        viewControllers = [nav1, nav2, nav3, nav4]
        
        
    }
    
// 네비게이션 바 설정코드 
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.tintColor = .white
        
        return nav
    }
    

}
