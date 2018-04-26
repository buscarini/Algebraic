//
//  FuncM.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct FuncM<A, M: Monoid> {
	public let value: (A) -> M
	public init(_ value: @escaping (A) -> M) {
		self.value = value
	}
}

extension FuncM: Monoid {
	public static var empty: FuncM {
		return FuncM { _ in M.empty }
	}
	
	public static func <>(left: FuncM, right: FuncM) -> FuncM {
		return FuncM { left.value($0) <> right.value($0) }
	}
}

// MARK: Contravariant Functor
extension FuncM {
	func contramap<B>(_ f: @escaping (B) -> A) -> FuncM<B, M> {
		return FuncM<B, M>(f >>> self.value)
	}
}

extension FuncM: CustomStringConvertible {
	public var description: String {
		return "FuncM"
	}
}

