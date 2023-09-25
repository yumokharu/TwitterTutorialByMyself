//
//  ExploreController.swift
//  TwitterTutorialByMyself
//
//  Created by 차유민 on 2023/08/09.
//

import UIKit

class ExploreController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}
