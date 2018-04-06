//
//  Sequence+FoldMap.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Sequence {
	public func foldMap<S: Semigroup>(_ f: (Iterator.Element) -> S, initial: S) -> S {
        var result = initial
        for el in self {
            result = result <> f(el)
        }
        return result
    }

    public func foldMap<M: Monoid>(_ f: (Iterator.Element) -> M) -> M {
		return self.foldMap(f, initial: M.empty)
    }
}

