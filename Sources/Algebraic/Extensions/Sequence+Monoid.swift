//
//  Sequence+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Sequence {
	func reduced(
		_ monoid: Monoid<Element>
	) -> Element {
		foldMap(id, monoid)
	}
}
