//
//  Endo.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Endo<A>: Pointed, Copointed {
	public let value: (A) -> A
	public init(_ value: @escaping (A) -> A) {
		self.value = value
	}
}

extension Endo: Monoid {
	public static var empty: Endo {
		return Endo(id)
	}
	
	public static func <>(left: Endo, right: Endo) -> Endo {
		return Endo { right.value(left.value($0)) }
	}
}

extension Endo: CustomStringConvertible {
	public var description: String {
		return "Endo"
	}
}

