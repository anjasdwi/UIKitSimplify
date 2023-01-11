//
//  UIView+DSL.swift
//  Bareksa
//
//  Created by Engineer on 10/11/22.
//  Copyright © 2022 Bareksa. All rights reserved.
//

import UIKit

extension UIView {
    convenience init(@ViewBuilder views: () -> [UIView]) {
        self.init()
        views().forEach { addSubview($0) }
    }

    @discardableResult
    func addSubviews(@ViewBuilder views: () -> [UIView]) -> Self {
        views().forEach { self.addSubview($0) }
        return self
    }

    /// DSL method for `setContentHuggingPriority`.
    @discardableResult
    func setContentHuggingPriority(_ priority: UILayoutPriority, _ axis: NSLayoutConstraint.Axis) -> Self {
        return with {
            $0.setContentHuggingPriority(priority, for: axis)
        }
    }

    /// DSL method for `setContentCompressionResistancePriority`.
    @discardableResult
    func setContentCompressionResistancePriority(_ priority: UILayoutPriority, _ axis: NSLayoutConstraint.Axis) -> Self {
        return with {
            $0.setContentCompressionResistancePriority(priority, for: axis)
        }
    }

    @discardableResult
    func backgroundColor(_ color: UIColor) -> Self {
        return with {
            $0.backgroundColor = color
        }
    }

    @discardableResult
    func cornerRadius(_ radius: CGFloat) -> Self {
        return with {
            $0.layer.cornerRadius = radius
        }
    }
}
