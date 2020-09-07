//
//  Monoidal.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 02/09/2020.
//

import Foundation

public protocol Monoidal {
	static var monoid: Monoid<Self> { get }
}

extension Monoidal {
	func combine(_ other: Self) -> Self {
		Self.monoid.combine(self, other)
	}
	
	func combine(_ otherItems: Self...) -> Self {
		([self] + otherItems).reduced(Self.monoid)
	}
}
