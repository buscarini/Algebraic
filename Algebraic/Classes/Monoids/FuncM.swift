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

extension FuncM: CustomStringConvertible {
	public var description: String {
		return "FuncM"
	}
}

