//
//  FeedController.swift
//  TwitterTutorialByMyself
//
//  Created by 차유민 on 2023/08/09.
//

import UIKit

class FeedController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .white
        
        // 일단 트위터 로고를 이미지 뷰에 넣은 후 네비게이션 바 타이틀 뷰에 이미지뷰라는 이름으로 넣어줌 
        let ImageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        ImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = ImageView
    }
}
