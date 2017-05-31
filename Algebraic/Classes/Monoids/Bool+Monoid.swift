//
//  Bool+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

// We implement all as the default bool monoid. Useful for predicates
extension Bool: Monoid {
	public static var empty: Bool {
		return true
	}
	
	public static func <>(left: Bool, right: Bool) -> Bool {
		return left && right
	}
}
