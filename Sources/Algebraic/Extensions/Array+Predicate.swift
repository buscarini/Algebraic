//
//  Array+Predicate.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension Array {
	@inlinable
	public func filtered(by predicate: Predicate<Element>) -> Array {
		self.filter(predicate.value)
	}
}

