//
//  Array+Comparator.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//
//

import Foundation

extension Array {
	@inlinable
	public func sorted(by comparator: Comparator<Element>) -> Array {
		self.sorted { comparator.value(($0, $1)) == .lt }
	}
}

