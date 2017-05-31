//
//  Sequence+FoldMap.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Sequence {
    public func foldMap<M: Monoid>(_ f: (Iterator.Element) -> M) -> M {
        var result = M.empty
        for el in self {
            result = result <> f(el)
        }
        return result
    }
}

