//
//  Func.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 04/09/2020.
//

import Foundation

extension Monoid {
	public static func `func`<B>(_ mon: Monoid<B>) -> Monoid<(T) -> B> {
		.init(
			empty: { _ in
				mon.empty
		},
			combine: { f, g in
				{ a in
					mon.combine(f(a), g(a))
				}
		}
		)
	}
}
