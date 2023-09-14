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

    private func setupUI() {
        navigationBar.isTranslucent = true

        updateSeparator()
    }

    // MARK: - Setup Methods

    func updateSeparator(hidden: Bool = false) {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithDefaultBackground()
        navigationBarAppearance.backgroundColor = .systemGray6
        navigationBarAppearance.shadowColor = hidden ? .clear : .opaqueSeparator

        navigationBar.standardAppearance = navigationBarAppearance
        navigationBar.scrollEdgeAppearance = navigationBarAppearance
        navigationBar.compactAppearance = navigationBarAppearance
        navigationBar.compactScrollEdgeAppearance = navigationBarAppearance
    }
}
