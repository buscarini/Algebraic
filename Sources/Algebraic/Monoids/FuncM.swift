//
//  FuncM.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct FuncM<A, M> {
	public let value: (A) -> M
	public init(_ value: @escaping (A) -> M) {
		self.value = value
	}
}

extension FuncM {
	public static func monoid(
		_ m: Monoid<M>
	) -> Monoid<FuncM> {
		Monoid(empty: FuncM { _ in m.empty }) { left, right in
			FuncM { m.combine(left.value($0), right.value($0)) }
		}
	}
}

// MARK: Contravariant Functor
extension FuncM {
	func contramap<B>(_ f: @escaping (B) -> A) -> FuncM<B, M> {
		FuncM<B, M>(f >>> self.value)
	}
}

extension FuncM: CustomStringConvertible {
	public var description: String {
		"FuncM"
	}
}

