//
//  Sum.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Sum<A: Numeric>: Pointed, Copointed{
	public let value: A
	public init(_ value: A) {
		self.value = value
	}
}

extension Sum: Monoid {
	public static var empty: Sum {
		return Sum(A.zero)
	}
	
	public static func <>(left: Sum, right: Sum) -> Sum {
		return Sum(left.value + right.value)
	}
}

extension Sum: Hashable {
	public var hashValue: Int {
		return value.hashValue
	}
}

extension Sum: CustomStringConvertible {
	public var description: String {
		return "Sum(\(value))"
	}
}

