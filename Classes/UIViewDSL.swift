//
//  UIView+DSL.swift
//  Bareksa
//
//  Created by anjasdwi on 10/11/22.
//  Copyright © 2022 Bareksa. All rights reserved.
//

import UIKit

extension UIView {

    /// DSL method for `setContentHuggingPriority`.
    ///
    /// ```
    /// setContentHuggingPriority(.defaultLow)
    /// ```
    /// - Parameters:
    ///    - priority: The specified priority layout type.
    /// - Returns: Self.
    @discardableResult
    public func setContentHuggingPriority(_ priority: UILayoutPriority, _ axis: NSLayoutConstraint.Axis) -> Self {
        return with {
            $0.setContentHuggingPriority(priority, for: axis)
        }
    }

    /// DSL method for `setContentCompressionResistancePriority`.
    ///
    /// ```
    /// setContentCompressionResistancePriority(.defaultLow)
    /// ```
    /// - Parameters:
    ///    - priority: The specified priority layout type.
    /// - Returns: Self.
    @discardableResult
    public func setContentCompressionResistancePriority(_ priority: UILayoutPriority, _ axis: NSLayoutConstraint.Axis) -> Self {
        return with {
            $0.setContentCompressionResistancePriority(priority, for: axis)
        }
    }

    /// DSL method for `backgroundColor`.
    ///
    /// ```
    /// backgroundColor(.red)
    /// ```
    /// - Parameters:
    ///    - color: The color desired for the background color.
    /// - Returns: Self.
    @discardableResult
    public func backgroundColor(_ color: UIColor) -> Self {
        return with {
            $0.backgroundColor = color
        }
    }

    /// DSL method for `cornerRadius`.
    ///
    /// ```
    /// cornerRadius(4)
    /// ```
    /// - Parameters:
    ///    - radius: The CGFloat value for corner radius.
    /// - Returns: Self.
    @discardableResult
    public func cornerRadius(_ radius: CGFloat) -> Self {
        return with {
            $0.layer.cornerRadius = radius
        }
    }

    /// DSL method for `contentMode`.
    ///
    /// ```
    /// contentMode(.scaleToFill)
    /// ```
    /// - Parameters:
    ///    - contentMode: The type desired for content mode.
    /// - Returns: Self.
    @discardableResult
    public func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        return with {
            $0.contentMode = contentMode
        }
    }

    /// DSL method for `tintColor`.
    ///
    /// ```
    /// tintColor(.red)
    /// ```
    /// - Parameters:
    ///    - tintColor: The color desired for tint color.
    /// - Returns: Self.
    @discardableResult
    public func tintColor(_ tintColor: UIColor) -> Self {
        return with {
            $0.tintColor = tintColor
        }
    }

    /// DSL method for `translatesAutoresizingMaskIntoConstraints`.
    ///
    /// ```
    /// translatesAutoresizingMaskIntoConstraints(false)
    /// ```
    /// - Parameters:
    ///    - status: The status desired for translates auto resizing mask into constraints.
    /// - Returns: Self.
    @discardableResult
    public func translatesAutoresizingMaskIntoConstraints(_ status: Bool) -> Self {
        return with {
            $0.translatesAutoresizingMaskIntoConstraints = status
        }
    }

    /// DSL method for `isHidden`.
    ///
    /// ```
    /// isHidden(false)
    /// ```
    /// - Parameters:
    ///    - isHidden: The status desired for is hidden.
    /// - Returns: Self.
    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        return with {
            $0.isHidden = isHidden
        }
    }

    /// DSL method for `isUserInteractionEnabled`.
    ///
    /// ```
    /// isUserInteractionEnabled(false)
    /// ```
    /// - Parameters:
    ///    - isUserInteractionEnabled: The status desired for is user interaction enabled.
    /// - Returns: Self.
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        return with {
            $0.isUserInteractionEnabled = isUserInteractionEnabled
        }
    }

    /// DSL method for `tag`.
    ///
    /// ```
    /// tag(100)
    /// ```
    /// - Parameters:
    ///    - tag: The integer tag desired for tag.
    /// - Returns: Self.
    @discardableResult
    public func tag(_ tag: Int) -> Self {
        return with {
            $0.tag = tag
        }
    }

}

// MARK: - Result builder
extension UIView {
    
    public convenience init(@ViewBuilder views: () -> [UIView]) {
        self.init()
        views().forEach { addSubview($0) }
    }

    @discardableResult
    public func addSubviews(@ViewBuilder views: () -> [UIView]) -> Self {
        views().forEach { self.addSubview($0) }
        return self
    }

}
