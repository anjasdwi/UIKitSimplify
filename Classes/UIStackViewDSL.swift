//
//  UIStackView+DSL.swift
//  Bareksa
//
//  Created by anjasdwi on 10/10/22.
//  Copyright © 2022 Bareksa. All rights reserved.
//

import UIKit

extension UIStackView {
    public typealias SpacingConfig = (CGFloat, after: UIView)

    /// DSL method for `axis`.
    ///
    /// ```
    /// axis(.horizontal)
    /// ```
    /// - Parameters:
    ///    - axis: The specified axis type.
    /// - Returns: Self.
    @discardableResult
    public func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        return with {
            $0.axis = axis
        }
    }

    /// DSL method for `spacing`.
    ///
    /// ```
    /// spacing(8)
    /// ```
    /// - Parameters:
    ///    - spacing: The CGFloat value for spacing.
    /// - Returns: Self.
    @discardableResult
    public func spacing(_ spacing: CGFloat = 0) -> Self {
        return with {
            $0.spacing = spacing
        }
    }

    /// DSL method for `distribution`.
    ///
    /// ```
    /// distribution(.fillEqually)
    /// ```
    /// - Parameters:
    ///    - distribution: The specified distribution type.
    /// - Returns: Self.
    @discardableResult
    public func distribution(_ distribution: UIStackView.Distribution) -> Self {
        return with {
            $0.distribution = distribution
        }
    }

    /// DSL method for `alignment`.
    ///
    /// ```
    /// alignment(.center)
    /// ```
    /// - Parameters:
    ///    - alignment: The specified alignment type.
    /// - Returns: Self.
    @discardableResult
    public func alignment(_ alignment: UIStackView.Alignment) -> Self {
        return with {
            $0.alignment = alignment
        }
    }

    /// DSL method for multiple`addArrangedSubview`.
    ///
    /// ```
    /// views(UIView(), UIView())
    /// ```
    /// - Parameters:
    ///    - views: The multiple UIView to add.
    /// - Returns: Self.
    @discardableResult
    public func views(_ views: UIView...) -> Self {
        views.forEach { self.addArrangedSubview($0) }
        return self
    }

    /// DSL method for multiple`setCustomSpacing`.
    ///
    /// ```
    /// views((8, after: specificView1), (12, after: specificView2))
    /// ```
    /// - Parameters:
    ///    - configs: The multiple customSpacing to add.
    /// - Returns: Self.
    @discardableResult
    public func setCustomSpacing(_ configs: SpacingConfig...) -> Self {
        return with { sv in
            configs.forEach { config in
                sv.setCustomSpacing(config)
            }
        }
    }

    /// DSL method for `layoutMargins`.
    ///
    /// ```
    /// layoutMargins(.init(top: 4, left: 4, bottom: 4, right: 4))
    /// ```
    /// - Parameters:
    ///    - margins: The UIEdgeInsets value for layout margins.
    /// - Returns: Self.
    @discardableResult
    public func layoutMargins(_ margins: UIEdgeInsets) -> Self {
        return with {
            $0.isLayoutMarginsRelativeArrangement = true
            $0.layoutMargins = margins
        }
    }

    /// DSL method for multiple`arrangedSubviews`.
    ///
    /// ```
    /// arrangedSubviews(UIView, UIView)
    /// ```
    /// - Parameters:
    ///    - views: The multiple UIView to arrange.
    /// - Returns: Self.
    @discardableResult
    public func arrangedSubviews(_ views: [UIView]) -> Self {
        views.forEach { view in
            addArrangedSubview(view)
        }
        return self
    }

}

// MARK: - Result builder
extension UIStackView {

    public convenience init(@ViewBuilder content: () -> [UIView]) {
        self.init(arrangedSubviews: content())
    }

    @discardableResult
    public func addArrangedSubviews(@ViewBuilder content: () -> [UIView]) -> Self {
        content().forEach { self.addArrangedSubview($0) }
        return self
    }

}
