//
//  Average.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 2/6/17.
//
//

import Foundation

public struct Average<A: Numeric>: Pointed, Copointed{
	public let sumValues: A
	public let numValues: A
	
	public init(_ value: A, numValues: A) {
		self.sumValues = value
		self.numValues = numValues
	}
	
	public init(_ value: A) {
		self.sumValues = value
		self.numValues = A.one
	}

	public var value: A {
		return sumValues/numValues
	}
}

// MARK: Functor
extension Average {
	public func map<B>(_ f: (A) -> B) -> Average<B> {
		return Average<B>(f(sumValues))
	}
}

extension Average: Monoid {
	public static var empty: Average {
		return Average(A.zero, numValues: A.zero)
	}
	
	public static func <>(left: Average, right: Average) -> Average {
		return Average(left.sumValues + right.sumValues, numValues: left.numValues + right.numValues)
	}
}

extension Average: Hashable {
	public var hashValue: Int {
		return value.hashValue
	}
}

extension Average: CustomStringConvertible {
	public var description: String {
		return "Average(\(value))"
	}
}
