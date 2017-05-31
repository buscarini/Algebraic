//
//  First.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct First<A>: Pointed, Copointed {
	public let value: A?
	public init(_ value: A?) {
		self.value = value
	}
}

extension First: Monoid {
	public static var empty: First {
		return First(nil)
	}
	
	public static func <>(left: First, right: First) -> First {
		return left
	}
}

extension First: CustomStringConvertible {
	public var description: String {
		return "First(\(String(describing: value)))"
	}
}
