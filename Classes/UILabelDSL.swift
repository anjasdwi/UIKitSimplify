//
//  UILabel+DSL.swift
//  Bareksa
//
//  Created by anjasdwi on 18/11/22.
//  Copyright © 2022 Bareksa. All rights reserved.
//
import UIKit

extension UILabel {
    
    /// DSL method for `textColor`.
    ///
    /// ```
    /// textColor(.red)
    /// ```
    /// - Parameters:
    ///    - textColor: The color desired for the text color.
    /// - Returns: Self.
    @discardableResult
    public func textColor(_ textColor: UIColor) -> Self {
        return with {
            $0.textColor = textColor
        }
    }

    /// DSL method for `numberOfLines`.
    ///
    /// ```
    /// numberOfLines(2)
    /// ```
    /// - Parameters:
    ///    - numberOfLines: The Int value for numberOfLines.
    /// - Returns: Self.
    @discardableResult
    public func numberOfLines(_ numberOfLines: Int) -> Self {
        return with {
            $0.numberOfLines = numberOfLines
        }
    }

    /// DSL method for `text`.
    ///
    /// ```
    /// text("lorem ipsum")
    /// ```
    /// - Parameters:
    ///    - text: The String text to add.
    /// - Returns: Self.
    @discardableResult
    public func text(_ text: String) -> Self {
        return with {
            $0.text = text
        }
    }

    /// DSL method for `textAlignment`.
    ///
    /// ```
    /// textAlignment(.center)
    /// ```
    /// - Parameters:
    ///    - align: The specified align type.
    /// - Returns: Self.
    @discardableResult
    public func textAlignment(_ align: NSTextAlignment) -> Self {
        return with {
            $0.textAlignment = align
        }
    }

    /// DSL method for `lineBreakMode`.
    ///
    /// ```
    /// lineBreakMode(.byWordWrapping)
    /// ```
    /// - Parameters:
    ///    - lineBreakMode: The specified line break mode type.
    /// - Returns: Self.
    @discardableResult
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        return with {
            $0.lineBreakMode = lineBreakMode
        }
    }

    /// DSL method for `font`.
    ///
    /// ```
    /// font(.systemFont(ofSize: 12))
    /// ```
    /// - Parameters:
    ///    - lineBreakMode: The font to add.
    /// - Returns: Self.
    @discardableResult
    public func font(_ font: UIFont!) -> Self {
        return with {
            $0.font = font
        }
    }

}
