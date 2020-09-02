//
//  Sequence+Semigroup.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Sequence {
	func reduced(
		_ initial: Element,
		_ semigroup: Semigroup<Element>
	) -> Element {
		foldMap(id, initial: initial, semigroup)
	}
}
