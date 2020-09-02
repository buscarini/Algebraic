//
//  Max.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension Semigroup where T: Comparable & Hashable {
	public static var max: Semigroup {
		Semigroup { left, right in
			Swift.max(left, right)
		}
	}
}

extension Monoid where T: Comparable & Hashable & LowerBounded {
	public static var max: Monoid {
		Monoid(
			empty: T.minValue,
			semigroup: Semigroup<T>.max
		)
	}
}
