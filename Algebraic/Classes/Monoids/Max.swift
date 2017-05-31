//
//  Max.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Max<A: Comparable>: Pointed, Copointed {
	public let value: A?
	public init(_ value: A?) {
		self.value = value
	}
}

extension Max: Monoid {
	public static var empty: Max {
		return Max(nil)
	}
	
	public static func <>(left: Max, right: Max) -> Max {
		return max(left, right)
	}
}

extension Max: CustomStringConvertible {
	public var description: String {
		return "Max(\(String(describing: value)))"
	}
}

extension Max: Equatable, Comparable {
	public static func == <T: Equatable>(x: Max<T>, y: Max<T>) -> Bool {
		return x.value == y.value
	}
	
	public static func < <T: Comparable>(x: Max<T>, y: Max<T>) -> Bool {
		switch (x.value, y.value) {
			case (.none, .none): return false
			case (.none, .some): return true
			case (.some, .none): return false
			case let (.some(a), .some(b)): return a < b
		}
	}
}
