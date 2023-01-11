//
//  UIStackView+DSL.swift
//  Bareksa
//
//  Created by Engineer on 10/10/22.
//  Copyright © 2022 Bareksa. All rights reserved.
//

import UIKit

extension UIStackView {
    typealias SpacingConfig = (CGFloat, after: UIView)

    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        return with {
            $0.axis = axis
        }
    }

    @discardableResult
    func spacing(_ spacing: CGFloat = 0) -> Self {
        return with {
            $0.spacing = spacing
        }
    }

    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        return with {
            $0.distribution = distribution
        }
    }

    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        return with {
            $0.alignment = alignment
        }
    }

    @discardableResult
    func translatesAutoresizingMaskIntoConstraints(_ status: Bool) -> Self {
        return with {
            $0.translatesAutoresizingMaskIntoConstraints = status
        }
    }

    @discardableResult
    func views(_ views: UIView...) -> Self {
        views.forEach { self.addArrangedSubview($0) }
        return self
    }

    @discardableResult
    func setCustomSpacing(_ configs: SpacingConfig...) -> Self {
        return with { sv in
            configs.forEach { config in
                sv.setCustomSpacing(config.0, after: config.after)
            }
        }
    }

    @discardableResult
    func layoutMargins(_ margins: UIEdgeInsets) -> Self {
        return with {
            $0.isLayoutMarginsRelativeArrangement = true
            $0.layoutMargins = margins
        }
    }
    func arrangedSubviews(_ views: [UIView]) {
        views.forEach { view in
            addArrangedSubview(view)
        }
    }
}

// MARK: - Result builder
extension UIStackView {
    convenience init(@ViewBuilder content: () -> [UIView]) {
        self.init(arrangedSubviews: content())
    }

    @discardableResult
    func addArrangedSubviews(@ViewBuilder content: () -> [UIView]) -> Self {
        content().forEach { self.addArrangedSubview($0) }
        return self
    }

}
