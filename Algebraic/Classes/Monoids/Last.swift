//
//  Last.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Last<A>: Pointed, Copointed {
	public let value: A?
	public init(_ value: A?) {
		self.value = value
	}
}

extension Last: Monoid {
	public static var empty: Last {
		return Last(nil)
	}
	
	public static func <>(left: Last, right: Last) -> Last {
		return right
	}
}

extension Last: CustomStringConvertible {
	public var description: String {
		return "Last(\(String(describing: value)))"
	}
}
