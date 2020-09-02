//
//  Endo.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Endo<A>: Copointed {
	public let value: (A) -> A
	public init(_ value: @escaping (A) -> A) {
		self.value = value
	}
}

extension Endo: Monoidal {
	public static var monoid: Monoid<Endo> {
		Monoid(empty: Endo(id), combine: { left, right in
			Endo { right.value(left.value($0)) }
		})
	}
}

extension Endo: CustomStringConvertible {
	public var description: String {
		"Endo"
	}
}
