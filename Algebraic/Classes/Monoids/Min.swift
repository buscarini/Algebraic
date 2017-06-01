//
//  Min.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Min<A: Comparable>: Pointed, Copointed {
	public let value: A?
	public init(_ value: A?) {
		self.value = value
	}
}

extension Min: Monoid {
	public static var empty: Min {
		return Min(nil)
	}
	
	public static func <>(left: Min, right: Min) -> Min {
		return min(left, right)
	}
}

extension Min: CustomStringConvertible {
	public var description: String {
		return "Min(\(String(describing: value)))"
	}
}

extension Min: Hashable {
	public var hashValue: Int {
		return "Min \(String(describing: value))".hashValue
	}
}

extension Min: Equatable, Comparable {
	public static func == <T: Equatable>(x: Min<T>, y: Min<T>) -> Bool {
		return x.value == y.value
	}
	
	public static func < <T: Comparable>(x: Min<T>, y: Min<T>) -> Bool {
		switch (x.value, y.value) {
			case (.none, .none): return false
			case (.none, .some): return false
			case (.some, .none): return true
			case let (.some(a), .some(b)): return a < b
		}
	}
}
