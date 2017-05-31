//
//  Product.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Product<A: Numeric>: Pointed, Copointed {
	public let value: A
	public init(_ value: A) {
		self.value = value
	}
}

extension Product: Monoid {
	public static var empty: Product {
		return Product(A.one)
	}
	
	public static func <>(left: Product, right: Product) -> Product {
		return Product(left.value * right.value)
	}
}

extension Product: CustomStringConvertible {
	public var description: String {
		return "Product(\(value))"
	}
}

