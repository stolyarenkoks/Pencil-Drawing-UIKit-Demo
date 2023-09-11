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
}
