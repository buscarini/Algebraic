//
//  Predicate.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public typealias Predicate<A> = FuncM<A, AnyOf>

extension FuncM where M == AnyOf {
	static func && <A>(_ left: Predicate<A>, _ right: Predicate<A>) -> Predicate<A> {
		return Predicate<A>({ a in
			return AnyOf(left.value(a).value && right.value(a).value)
		})
	}

	static func || <A>(_ left: Predicate<A>, _ right: Predicate<A>) -> Predicate<A> {
		return left <> right
	}
}
