//
//  SceneDelegate.swift
//  PencilDrawingDemo
//
//  Created by Konstantin Stolyarenko on 11.09.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import UIKit

// MARK: - Scene Delegate

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // MARK: - Internal Properties

    var window: UIWindow?

    // MARK: - Scene Lifecycle Methods

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)

        let drawVC = DrawViewController.instantiate()
        let drawNC = NavigationController(rootViewController: drawVC)

        window?.rootViewController = drawNC
        window?.makeKeyAndVisible()
    }
}
