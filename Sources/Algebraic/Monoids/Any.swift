//
//  Any.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension Monoid where T == Bool {
	public static var any: Monoid<Bool> {
		Monoid<Bool>(
			empty: false,
			combine: { left, right in
				left || right
			}
		)
	}
}
