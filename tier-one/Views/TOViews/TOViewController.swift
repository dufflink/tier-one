//
//  TOViewController.swift
//  tier-one
//
//  Created by Maxim Skorynin on 05.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

class TOViewController: UIViewController {
    
    // MARK: - UI Variables
    
    var isFullScreen = false {
        didSet {
            hideShowNavigationBar()
        }
    }
    
    var statusBarStyle: UIStatusBarStyle = Constants.shared.defaultStatusBarStyle {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    var titleColor: UIColor = #colorLiteral(red: 0.1568627451, green: 0.1568627451, blue: 0.1568627451, alpha: 1) {
        didSet {
            setTitleSettings()
        }
    }
    
    var isLargeTitle: Bool = false {
        didSet {
            setTitleSize()
        }
    }
    
    var navigationTitle: String? {
        get {
            return navigationController?.navigationBar.topItem?.title
        } set {
            navigationController?.navigationBar.topItem?.title = newValue
            self.title = newValue
        }
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Warning! Did recieve memory warning [TOViewController]")
    }
    
    // MARK: - Public Functions
    
    func configure() {
        configureBackBarButtonItem()
        setNeedsStatusBarAppearanceUpdate()
        
        setTitleSettings()
    }
    
    // MARK: - Private Functions
    
    private func setTitleSize() {
        navigationItem.largeTitleDisplayMode = isLargeTitle ? .always : .never
    }
    
    private func hideShowNavigationBar() {
        navigationController?.navigationBar.isHidden = isFullScreen
    }
    
    private func configureBackBarButtonItem() {
//        navigationController?.navigationBar.backIndicatorImage = #imageLiteral(resourceName: "Back")
//        navigationController?.navigationBar.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "Back")
//        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    private func setTitleSettings() {
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: titleColor]
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: titleColor]
    }
    
}
