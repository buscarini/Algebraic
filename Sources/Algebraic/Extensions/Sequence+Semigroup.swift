//
//  Sequence+Semigroup.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension Sequence {
	public func reduced(
		_ initial: Element,
		_ semigroup: Semigroup<Element>
	) -> Element {
		foldMap(id, initial: initial, semigroup)
	}
	
	public func reduced(
		_ s: Semigroup<Element>
	) -> Element? {
		self.reduce(nil, { acc, item in
			guard let acc = acc else {
				return item
			}
			
			return s.combine(acc, item)
		})
	}
}
