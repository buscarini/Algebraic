//
//  Predicate.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public typealias Predicate<A> = FuncM<A, Bool>

extension FuncM where M == Bool {
	static func && <A>(_ left: Predicate<A>, _ right: Predicate<A>) -> Predicate<A> {
		return left <> right
	}

	static func || <A>(_ left: Predicate<A>, _ right: Predicate<A>) -> Predicate<A> {
		return Predicate<A>({ a in
			return left.value(a) || right.value(a)
		})
	}
}
