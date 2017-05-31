//
//  Array+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension Array: Monoid {
	public static var empty: [Element] {
		return []
	}
	
	public static func <>(left: Array, right: Array) -> Array {
		return left + right
	}
}
