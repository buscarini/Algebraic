//
//  First.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct First<A: Equatable>: Equatable, Pointed, Copointed {
	public let value: A?
	public init(_ value: A?) {
		self.value = value
	}
}

// MARK: Functor
extension First {
	public func map<B>(_ f: (A) -> B) -> First<B> {
		return First<B>(self.value.map(f))
	}
}

extension First: Monoid {
	public static var empty: First {
		return First(nil)
	}
	
	public static func <>(left: First, right: First) -> First {
		return left
	}
}

public func == <A>(left: First<A>, right: First<A>) -> Bool {
	return left.value == right.value
}

extension First: Hashable {
	public var hashValue: Int {
		return "First \(String(describing: value))".hashValue
	}
}

extension First: CustomStringConvertible {
	public var description: String {
		return "First(\(String(describing: value)))"
	}
}
