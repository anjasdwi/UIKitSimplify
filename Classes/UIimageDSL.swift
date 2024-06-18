//
//  UIimage+DSL.swift
//  Bareksa
//
//  Created by anjasdwi on 24/02/23.
//  Copyright © 2023 Bareksa. All rights reserved.
//

import Foundation

extension UIImageView {

    /// DSL method for`image`.
    ///
    /// ```
    /// image(UIImage())
    /// ```
    /// - Parameters:
    ///    - image: The optional UIImage to add.
    /// - Returns: Self.
    @discardableResult
    public func image(_ image: UIImage?) -> Self {
        return with {
            $0.image = image
        }
    }

}
