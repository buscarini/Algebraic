//
//  Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Monoid<T> {
	public var empty: T
	public var semigroup: Semigroup<T>
	
	public var combine: (T, T) -> T {
		return semigroup.combine
	}
	
	public init(empty: T, semigroup: Semigroup<T>) {
		self.empty = empty
		self.semigroup = semigroup
	}
	
	public init(empty: T, combine: @escaping (T, T) -> T) {
		self.init(empty: empty, semigroup: Semigroup<T>.init(combine: combine))
	}
}
