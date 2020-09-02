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
	static func && <A>(_ left: Predicate<A>, _ right: Predicate<A>) -> Predicate<A> {
		Predicate<A>.monoid(Monoid<Bool>.all).combine(left, right)
	}

	static func || <A>(_ left: Predicate<A>, _ right: Predicate<A>) -> Predicate<A> {
		Predicate<A>.monoid(Monoid<Bool>.any).combine(left, right)
	}
}
