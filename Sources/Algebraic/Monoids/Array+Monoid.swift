//
//  Array+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension Array: Monoidal {
	public static var monoid: Monoid<Array> {
		Monoid(
			empty: [],
			combine: { left, right in
				left + right
			}
		)
	}
}
