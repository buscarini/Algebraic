//
//  Set+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//
//

import Foundation

extension Set: Monoid {
	public static var empty: Set {
		return Set()
	}
	
	public static func <>(left: Set, right: Set) -> Set {
		return left.union(right)
	}
}
