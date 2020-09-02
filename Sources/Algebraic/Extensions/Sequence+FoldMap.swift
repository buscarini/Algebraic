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
	
	@inlinable
	func foldMap<M: Monoidal & Pointed>(
		_ m: M.Type
	) -> M where M.A == Iterator.Element {
		self.foldMap(M.init(_:), M.monoid)
	}
	
	@inlinable
	func foldMap<M: Monoidal & Pointed & Copointed>(
		_ m: M.Type
	) -> M.A where M.A == Iterator.Element {
		self.foldMap(M.init(_:), M.monoid).value
	}
}

