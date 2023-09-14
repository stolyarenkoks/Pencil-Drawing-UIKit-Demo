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

// MARK: - UIView LoadView Extension

extension UIView {

    // MARK: - Internal Methods

    internal static func loadFromNib<T>() -> T where T: UIView {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: "\(self)", bundle: bundle)
        guard let view = nib.instantiate(withOwner: nil, options: nil).first as? T else {
            fatalError("Could not load view from nib file.")
        }
        return view
    }
}

// MARK: - UIStackView Extensions

extension UIStackView {

    func removeAllArrangedSubviews() {
        // Remove the arrangedSubviews from self
        let removedSubviews = arrangedSubviews.reduce([]) { allSubviews, subview -> [UIView] in
            self.removeArrangedSubview(subview)
            return allSubviews + [subview]
        }

        // Deactivate all constraints
        NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))

        // Remove the views from self
        removedSubviews.forEach({ $0.removeFromSuperview() })
    }

    func addSpacerView() {
        let spacerView = UIView()
        spacerView.setContentHuggingPriority(.defaultLow, for: .horizontal)
        addArrangedSubview(spacerView)
    }
}
