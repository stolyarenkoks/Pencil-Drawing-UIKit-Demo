//
//  NavigationController.swift
//  PencilDrawingDemo
//
//  Created by Konstantin Stolyarenko on 11.09.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    // MARK: - View Lifecycle Properties

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }

    // MARK: - ViewController Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    // MARK: - Setup Methods

    func setupUI() {
        navigationBar.isTranslucent = true

        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithDefaultBackground()
        navBarAppearance.backgroundColor = .systemGray6

        navigationBar.standardAppearance = navBarAppearance
        navigationBar.scrollEdgeAppearance = navBarAppearance
        navigationBar.compactAppearance = navBarAppearance
        navigationBar.compactScrollEdgeAppearance = navBarAppearance
    }
}
