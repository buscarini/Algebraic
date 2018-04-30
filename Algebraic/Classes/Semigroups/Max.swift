//
//  Max.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation


public struct Max<A: Comparable & Hashable>: Pointed, Copointed {
	public let value: A
	public init(_ value: A) {
		self.value = value
	}
}

// MARK: Functor
extension Max {
	public func map<B>(_ f: (A) -> B) -> Max<B> {
		return Max<B>(f(self.value))
	}
}

extension Max: Semigroup {
	public static func <>(left: Max, right: Max) -> Max {
		return max(left, right)
	}
}

extension Max: CustomStringConvertible {
	public var description: String {
		return "Max(\(value))"
	}
}

extension Max: Hashable {
	public var hashValue: Int {
		return value.hashValue
	}
}

extension Max: Equatable, Comparable {
	public static func == <T>(x: Max<T>, y: Max<T>) -> Bool {
		return x.value == y.value
	}
	
	public static func < <T>(x: Max<T>, y: Max<T>) -> Bool {
		return x.value < y.value
	}
}

// TODO: Make max conform to monoid in this case when the compiler supports it
public extension Max where A: LowerBounded {
	static var empty: Max {
		return Max(A.minValue)
	}
}

