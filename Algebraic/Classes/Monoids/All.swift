//
//  All.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct All: Pointed, Copointed, Equatable, Hashable {
	public let value: Bool
	public init(_ value: Bool) {
		self.value = value
	}
}

// MARK: Functor
extension All {
	public func map(_ f: (Bool) -> Bool) -> All {
		return All(f(self.value))
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

extension All: RawRepresentable {
	public var rawValue: Bool {
		return self.value
	}
	
	public typealias RawValue = Bool
	
	public init?(rawValue: RawValue) {
		self.value = rawValue
	}
}
extension All: ExpressibleByBooleanLiteral {
	public typealias BooleanLiteralType = Bool

	public init(booleanLiteral value: BooleanLiteralType) {
		self.init(value)
	}
}

extension All: CustomStringConvertible {
	public var description: String {
		return "All(\(value))"
	}
}
