//
//  Sequence+FoldMap.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Sequence {
	@inlinable
	func foldMap<S>(
		_ f: (Iterator.Element) -> S,
		initial: S,
		_ s: Semigroup<S>
	) -> S {
		var result = initial
		for el in self {
			result = s.combine(result, f(el))
		}
		return result
	}
	
	@inlinable
	func foldMap<M>(
		_ f: (Iterator.Element) -> M,
		_ m: Monoid<M>
	) -> M {
		self.foldMap(f, initial: m.empty, m.semigroup)
	}
}

