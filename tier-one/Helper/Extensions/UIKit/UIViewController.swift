//
//  UIViewController.swift
//  tier-one
//
//  Created by Maxim Skorynin on 05.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import UIKit

extension UIViewController {

    func push(clearBackStack: Bool) {
        if !clearBackStack {
            Instance.shared.navigationController.pushViewController(self, animated: true)
        } else {
            Instance.shared.navigationController.setViewControllers([self], animated: false)
        }
    }

    func present() {
        DispatchQueue.main.async {
            Instance.shared.navigationController.present(self, animated: true)
        }
    }

    func popBack() {
        Instance.shared.navigationController.popViewController(animated: true)
    }

}
