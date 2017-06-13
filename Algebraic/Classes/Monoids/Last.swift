//
//  Last.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct Last<A: Equatable>: Equatable, Pointed, Copointed {
	public let value: A?
	public init(_ value: A?) {
		self.value = value
	}
}

// MARK: Functor
extension Last {
	public func map<B>(_ f: (A) -> B) -> Last<B> {
		return Last<B>(self.value.map(f))
	}
}

extension Last: Monoid {
	public static var empty: Last {
		return Last(nil)
	}
	
	public static func <>(left: Last, right: Last) -> Last {
		return right
	}
}

public func == <A>(left: Last<A>, right: Last<A>) -> Bool {
	return left.value == right.value
}

extension Last: Hashable {
	public var hashValue: Int {
		return "Last \(String(describing: value))".hashValue
	}
}

extension Last: CustomStringConvertible {
	public var description: String {
		return "Last(\(String(describing: value)))"
	}
}
