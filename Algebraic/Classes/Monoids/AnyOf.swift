//
//  AnyOf.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct AnyOf: Pointed, Copointed {
	public let value: Bool
	public init(_ value: Bool) {
		self.value = value
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

extension AnyOf: Hashable {
	public var hashValue: Int {
		return value.hashValue
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
