//
//  Sum.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Monoid where T: Numeric {
	static var sum: Monoid<T> {
		Monoid<T>.init(empty: T.zero, combine: +)
	}
}
