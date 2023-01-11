//
//  UILabel+DSL.swift
//  Bareksa
//
//  Created by Iqbal Zauqul on 18/11/22.
//  Copyright © 2022 Bareksa. All rights reserved.
//
import UIKit

extension UILabel {
    @discardableResult
    func textColor(_ textColor: UIColor) -> Self {
        return with {
            $0.textColor = textColor
        }
    }

    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> Self {
        return with {
            $0.numberOfLines = numberOfLines
        }
    }

    @discardableResult
    func text(_ text: String) -> Self {
        return with {
            $0.text = text
        }
    }

    @discardableResult
    func textAlignment(_ align: NSTextAlignment) -> Self {
        return with {
            $0.textAlignment = align
        }
    }
}
