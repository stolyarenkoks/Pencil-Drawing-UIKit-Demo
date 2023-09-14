//
//  UIView+Extensions.swift
//  PencilDrawingDemo
//
//  Created by Konstantin Stolyarenko on 14.09.2023.
//  Copyright © 2023 SKS. All rights reserved.
//

import UIKit

// MARK: - UIView Constraints Extension

extension UIView {

    // MARK: - Internal Methods

    func adjustFrame(inView view: UIView) {
        frame = view.bounds
        view.addSubview(self)
    }

    func pinEdges(toView view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: .zero).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: .zero).isActive = true
        topAnchor.constraint(equalTo: view.topAnchor, constant: .zero).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: .zero).isActive = true
    }
}

// MARK: - UIView LoadView Extension

extension UIView {

    // MARK: - Internal Methods

    static func loadFromNib<T>() -> T where T: UIView {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: "\(self)", bundle: bundle)
        guard let view = nib.instantiate(withOwner: nil, options: nil).first as? T else {
            fatalError("Could not load view from nib file.")
        }
        return view
    }
}
