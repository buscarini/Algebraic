//
//  Optional+Max.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

extension Optional {
	public static func monoid(
		_ s: Semigroup<Wrapped>
	) -> Monoid<Optional> {
		Monoid(
			empty: nil,
			combine: { left, right in
				zip(left, right).map(s.combine)
			}
		)
	}
}

