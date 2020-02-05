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
    
    var titleColor: UIColor = .black {
        didSet {
            setTitleSettings()
        }
    }
    
    var isLargeTitle: Bool = false {
        didSet {
            setTitleSize()
        }
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackBarButtonItem()
        setNeedsStatusBarAppearanceUpdate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Warning! Did recieve memory warning [TOViewController]")
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
