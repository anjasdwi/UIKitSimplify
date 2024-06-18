//
//  NSObject+Withable.swift
//  Bareksa
//
//  Created by anjasdwi on 10/10/22.
//  Copyright © 2022 Bareksa. All rights reserved.
//

import Foundation

public protocol Withable {
    associatedtype Typ

    @discardableResult func with(_ closure: (_ instance: Typ) -> Void) -> Typ
}

extension Withable {

    @discardableResult
    public func with(_ closure: (_ instance: Self) -> Void) -> Self {
        closure(self)
        return self
    }

}

extension NSObject: Withable { }
