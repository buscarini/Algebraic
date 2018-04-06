//
//  Min.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Min<A: Comparable & Hashable>: Pointed, Copointed {
	public let value: A
	public init(_ value: A) {
		self.value = value
	}
}

// MARK: Functor
extension Min {
	public func map<B>(_ f: (A) -> B) -> Min<B> {
		return Min<B>(f(self.value))
	}
}

extension Min: Semigroup {
	public static func <>(left: Min, right: Min) -> Min {
		return min(left, right)
	}
}

extension Min: CustomStringConvertible {
	public var description: String {
		return "Min(\(value))"
	}
}

extension Min: Hashable {
	public var hashValue: Int {
		return value.hashValue
	}
}

extension Min: Equatable, Comparable {
	public static func == <T>(x: Min<T>, y: Min<T>) -> Bool {
		return x.value == y.value
	}
	
	public static func < <T>(x: Min<T>, y: Min<T>) -> Bool {
		return x.value < y.value
	}
}

// TODO: Make max conform to monoid in this case when the compiler supports it
public extension Min where A: UpperBounded {
	static var empty: Min {
		return Min(A.maxValue)
	}
}



