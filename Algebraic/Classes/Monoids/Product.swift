//
//  Product.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Monoid where T: Numeric {
	static var product: Monoid<T> {
		Monoid<T>.init(empty: 1 as! T, combine: *)
	}
}
