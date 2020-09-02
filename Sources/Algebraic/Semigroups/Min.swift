//
//  Min.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation


extension Semigroup where T: Comparable & Hashable {
	public static var min: Semigroup {
		Semigroup { left, right in
			Swift.min(left, right)
		}
	}
}

extension Monoid where T: Comparable & Hashable & UpperBounded {
	public static var min: Monoid {
		Monoid(
			empty: T.maxValue,
			semigroup: Semigroup<T>.min
		)
	}
}

