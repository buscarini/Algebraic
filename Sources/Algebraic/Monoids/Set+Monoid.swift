//
//  Set+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//
//

import Foundation

extension Set: Monoidal {
	public static var monoid: Monoid<Set> {
		.init(
			empty: Set(),
			combine: { left, right in
				left.union(right)
			}
		)
	}
}

