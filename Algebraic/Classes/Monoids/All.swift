//
//  All.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct All: Pointed, Copointed {
	public let value: Bool
	public init(_ value: Bool) {
		self.value = value
	}
}

extension All: Monoid {
	public static var empty: All {
		return All(true)
	}
	
	public static func <>(left: All, right: All) -> All {
		return All(left.value && right.value)
	}
}

extension All: CustomStringConvertible {
	public var description: String {
		return "All(\(value))"
	}
}
