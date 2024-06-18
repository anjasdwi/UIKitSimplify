//
//  ResultBuilder.swift
//  Bareksa
//
//  Created by anjasdwi on 10/11/22.
//  Copyright © 2022 Bareksa. All rights reserved.
//

import Foundation

@resultBuilder
struct ViewBuilder {

    static func buildBlock(_ components: UIView...) -> [UIView] {
        components
    }

}
