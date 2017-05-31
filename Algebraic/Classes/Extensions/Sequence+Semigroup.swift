//
//  Sequence+Semigroup.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Sequence where Iterator.Element: Semigroup {
    public func reduced(initial: Iterator.Element) -> Iterator.Element {
        var result = initial
        for el in self {
            result = result <> el
        }
        return result
    }
}
