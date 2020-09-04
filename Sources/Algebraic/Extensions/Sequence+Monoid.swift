//
//  Sequence+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension Sequence {
	public func reduced(
		_ monoid: Monoid<Element>
	) -> Element {
		foldMap(id, monoid)
	}
}
