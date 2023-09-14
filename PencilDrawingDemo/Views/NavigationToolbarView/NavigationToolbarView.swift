//
//  NavigationToolbarView.swift
//  PencilDrawingDemo
//
//  Created by Konstantin Stolyarenko on 14.09.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import UIKit

// MARK: - NavigationToolbarView

class NavigationToolbarView: UIView {

    // MARK: - IBOutlets

    @IBOutlet private var stackView: UIStackView!
    @IBOutlet private var separatorView: UIView!

    // MARK: - Internal Properties

    internal var buttons: [UIButton] = [] {
        willSet {
            stackView.removeAllArrangedSubviews()
            stackView.addSpacerView()
            newValue.reversed().forEach { button in
                stackView.addArrangedSubview(button)
            }
        }
    }

    // MARK: - View Lifecycle Methods

    static func instantiate() -> NavigationToolbarView {
        let view: NavigationToolbarView = NavigationToolbarView.loadFromNib()
        return view
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        backgroundColor = .systemGray6

        separatorView.alpha = 0.7
        separatorView.backgroundColor = .opaqueSeparator
    }
}
