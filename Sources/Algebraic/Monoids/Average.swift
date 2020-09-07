//
//  Average.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 2/6/17.
//
//

import Foundation

public struct Average<A: Numeric>: Pointed, Equatable, Hashable {
	public let sumValues: A
	public let numValues: A
	
	public init(value: A, numValues: A) {
		self.sumValues = value
		self.numValues = numValues
	}
	
	public init(_ value: A) {
		self.sumValues = value
		self.numValues = A.one
	}
	
	public var value: A? {
		guard numValues != A.zero else {
			return nil
		}
		
		return sumValues/numValues
	}
}

// MARK: Functor
extension Average {
	public func map<B>(_ f: (A) -> B) -> Average<B> {
		return Average<B>(f(sumValues))
	}
}

extension Average: Monoidal {
	public static var monoid: Monoid<Average> {
		Monoid(
			empty: Average(value: A.zero, numValues: A.zero),
			combine: { left, right in
				Average(
					value: left.sumValues + right.sumValues,
					numValues: left.numValues + right.numValues
				)
		}
		)
	}
}

extension Average: CustomStringConvertible {
	public var description: String {
		let str = value.map { "\($0)" } ?? "-"
		return "Average(\(str))"
	}
}

extension Average: ExpressibleByIntegerLiteral where A: ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = A.IntegerLiteralType
	
	public init(integerLiteral: IntegerLiteralType) {
		self.init(A(integerLiteral: integerLiteral))
	}
}

extension Average: ExpressibleByFloatLiteral where A: ExpressibleByFloatLiteral {
	public typealias FloatLiteralType = A.FloatLiteralType
	
	public init(floatLiteral: FloatLiteralType) {
		self.init(A(floatLiteral: floatLiteral))
	}
}

