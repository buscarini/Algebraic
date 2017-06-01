//
//  Sequence+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Sequence where Iterator.Element: Monoid {
    public func reduced() -> Iterator.Element {
        var result = Iterator.Element.empty
        for el in self {
            result = result <> el
        }
        return result
    }
}
