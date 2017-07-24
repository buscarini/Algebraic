//
//  Shortest.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

public struct Shortest: Pointed, Copointed {
	public let value: String
	public init(_ value: String) {
		self.value = value
	}
}

extension Shortest: Monoid {
	public static var empty: Shortest {
		return Shortest("")
	}
	
	public static func <>(left: Shortest, right: Shortest) -> Shortest {
		return left.value.characters.count < right.value.characters.count ? left : right
	}
}

extension Shortest: Equatable {
	public static func == (left: Shortest, right: Shortest) -> Bool {
		return left.value == right.value
	}
}

extension Shortest: Hashable {
	public var hashValue: Int {
		return value.hashValue
	}
}

extension Shortest: CustomStringConvertible {
	public var description: String {
		return "Shortest(\(value))"
	}
}


