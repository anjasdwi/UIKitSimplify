//
//  Array+DSL.swift
//  Bareksa
//
//  Created by Engineer on 10/10/22.
//  Copyright © 2022 Bareksa. All rights reserved.
//

import Foundation

extension Array where Element: UIView {

    func add(to stackView: UIStackView) {
        forEach { stackView.addArrangedSubview($0) }
    }
}
