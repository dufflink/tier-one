//
//  Navigation.swift
//  tier-one
//
//  Created by Maxim Skorynin on 05.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

final class Navigation {
    
    static let shared = Navigation()
    
    private init() { }
    
    // MARK: - Public Functions
    
    func createMainViewController() -> UIViewController {
        return R.storyboard.main.mainViewController()!
    }
    
    func getInitialViewController() -> UIViewController {
        if LocaleStorage.shared.isAuthenticate {
            return createTabBarViewController()
        }
        
        return createStartingViewController()
    }
    
    func createStartingViewController() -> StartingViewController {
        return R.storyboard.main.startingViewController()!
    }
    
    func createTabBarViewController() -> TabBarViewController {
        return R.storyboard.tabs.tabBarViewController()!
    }
    
    func createNewsViewController() -> NewsViewController {
        return R.storyboard.news.newsViewController()!
    }
    
    func createDetailNewsViewController(with model: News) -> DetailNewsViewController {
        let viewController = R.storyboard.news.detailNewsViewController()!
        viewController.model = DetailNewsModel(news: model)
        
        return viewController
    }
    
}
