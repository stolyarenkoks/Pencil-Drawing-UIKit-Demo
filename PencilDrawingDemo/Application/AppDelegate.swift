//
//  AppDelegate.swift
//  PencilDrawingDemo
//
//  Created by Konstantin Stolyarenko on 11.09.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import UIKit

// MARK: - App Delegate

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - App Lifecycle Methods

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setDefaultLanguage()
        return true
    }

    func application(_ application: UIApplication,
                     configurationForConnecting connectingSceneSession: UISceneSession,
                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    // MARK: - Private Methods

    private func setDefaultLanguage() {
        let array = NSArray(objects: Locale.current.identifier)
        UserDefaults.standard.set(array, forKey: "AppleLanguages")
    }
}
