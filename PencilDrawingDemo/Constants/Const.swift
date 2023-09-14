//
//  Const.swift
//  PencilDrawingDemo
//
//  Created by Konstantin Stolyarenko on 11.09.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import UIKit

// MARK: - AnimationTime Enum

enum AnimationTime: TimeInterval {
    case slowest = 1.0
    case extremelySlow = 0.9
    case verySlow = 0.8
    case quiteSlow = 0.7
    case slow = 0.6
    case `default` = 0.5
    case fast = 0.4
    case quiteFast = 0.3
    case veryFast = 0.2
    case extremelyFast = 0.1
    case fastest = 0.0
}

// MARK: - AlphaState Enum

enum AlphaState: CGFloat {
    case visible = 1.0
    case translucent = 0.5
    case invisible = 0.0
}

// MARK: - Const

enum Const {

    // MARK: - General

    enum General {
        static let reuseIdentifier = "ReuseIdentifier"
        static let newLineSymbol = "\n"

        static let doneButtonTitle = "Done"
    }

    // MARK: - Models

    // MARK: - Views

    enum NavigationToolbarView {
        static let height: CGFloat = 48.0
    }

    // MARK: - TableCells

    // MARK: - CollectionCells

    enum ExampleCollectionCell {
        static let cellNibName = "ExampleCollectionCell"
        static let cellId = cellNibName + General.reuseIdentifier
    }

    // MARK: - ViewControllers

    enum Draw {
        static let drawTitle = "Draw"

        static let maxCanvasWidth: CGFloat = 1_200.0
        static let maxZoomScale = 5.0

        static let successAlertTitle = "Your drawing has been saved successfully!"
        static let successAlertMessage = "Open your Photo Library to see the saved picture."

        static let failedAlertTitle = "Your drawing was not saved!"
        static let failedAlertAcessDeniedMessage = "Please allow access to your Photo Library to save this drawing as an image."

        static func failedAlertDefaultMessage(errorDescription: String) -> String {
            "Check out the detailed error: \(errorDescription)."
        }
    }
}
