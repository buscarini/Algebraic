//
//  None.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct None: Pointed, Copointed, Equatable, Hashable {
	public let value: Bool
	public init(_ value: Bool) {
		self.value = value
	}
}

// MARK: Functor
extension None {
	public func map(_ f: (Bool) -> Bool) -> None {
		return None(f(self.value))
	}
}

extension None: Monoid {
	public static var empty: None {
		return None(false)
	}
	
	public static func <>(left: None, right: None) -> None {
		return None(!left.value && !right.value)
	}
}

extension None: RawRepresentable {
	public var rawValue: Bool {
		return self.value
	}
	
	public typealias RawValue = Bool
	
	public init?(rawValue: RawValue) {
		self.value = rawValue
	}
}

extension None: ExpressibleByBooleanLiteral {
	public typealias BooleanLiteralType = Bool

	public init(booleanLiteral value: BooleanLiteralType) {
		self.init(value)
	}
}

extension None: CustomStringConvertible {
	public var description: String {
		return "None(\(value))"
	}
}
