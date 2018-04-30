//
//  AnyOf.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct AnyOf: Pointed, Copointed, Equatable, Hashable {
	public let value: Bool
	public init(_ value: Bool) {
		self.value = value
	}
}

// MARK: Functor
extension AnyOf {
	public func map(_ f: (Bool) -> Bool) -> AnyOf {
		return AnyOf(f(self.value))
	}
}

extension AnyOf: Monoid {
	public static var empty: AnyOf {
		return AnyOf(false)
	}
	
	public static func <>(left: AnyOf, right: AnyOf) -> AnyOf {
		return AnyOf(left.value || right.value)
	}
}

extension AnyOf: RawRepresentable {
	public var rawValue: Bool {
		return self.value
	}
	
	public typealias RawValue = Bool
	
	public init?(rawValue: RawValue) {
		self.value = rawValue
	}
}

extension AnyOf: ExpressibleByBooleanLiteral {
	public typealias BooleanLiteralType = Bool

	public init(booleanLiteral value: BooleanLiteralType) {
		self.init(value)
	}
}

extension AnyOf: CustomStringConvertible {
	public var description: String {
		return "AnyOf(\(value))"
	}
}
//
//extension AnyOf: Equatable, Comparable, Orderable {
//  public static func == (_ x: AnyOf, y: AnyOf) -> Bool {
//    return x.value == y.value
//  }
//
//  public static func < (_ x: AnyOf, y: AnyOf) -> Bool {
//    return x.value < y.value
//  }
//}
