//
//  Predicate.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public typealias Predicate<A> = FuncM<A, Bool>

extension FuncM {
	public static func && <Value>(
		_ left: Predicate<Value>,
		_ right: Predicate<Value>
	) -> Predicate<Value> {
		Predicate<Value>.monoid(Monoid<Bool>.all).combine(left, right)
	}

	public static func || <Value>(
		_ left: Predicate<Value>,
		_ right: Predicate<Value>
	) -> Predicate<Value> {
		Predicate<Value>.monoid(Monoid<Bool>.any).combine(left, right)
	}
}
