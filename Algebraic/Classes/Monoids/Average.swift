//
//  Average.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 2/6/17.
//
//

import Foundation

public struct Average<A: Numeric>: Pointed, Copointed, Hashable {
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

extension Average {
	public static var monoid: Monoid<Average> {
		Monoid(
			empty: Average(A.zero, numValues: A.zero),
			combine: { left, right in
				Average(
					left.sumValues + right.sumValues,
					numValues: left.numValues + right.numValues
				)
			}
		)
	}
}

extension Average: CustomStringConvertible {
	public var description: String {
		"Average(\(value))"
	}
}
